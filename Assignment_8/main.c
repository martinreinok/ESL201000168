#include <gst/gst.h>
#include <glib.h>
#include <gst/app/gstappsink.h>


static gboolean bus_call (GstBus *bus, GstMessage *msg, gpointer data)
{
  GMainLoop *loop = (GMainLoop *) data;

  switch (GST_MESSAGE_TYPE (msg)) {

    case GST_MESSAGE_EOS:
      g_print ("End of stream\n");
      g_main_loop_quit (loop);
      break;

    case GST_MESSAGE_ERROR: {
      gchar  *debug;
      GError *error;

      gst_message_parse_error (msg, &error, &debug);
      g_free (debug);

      g_printerr ("Error: %s\n", error->message);
      g_error_free (error);

      g_main_loop_quit (loop);
      break;
    }
    default:
      break;
  }

  return TRUE;
}


void example_callback()
{
  g_print ("Pipeline callback\n");
  return;
}

/**
 * gst-launch-1.0 -v -e v4l2src device=/dev/video0
 * ! jpegenc ! image/jpeg,width=160,height=120,framerate=30/1
 * ! jpegdec ! filesink location=file.yuv
*/
int main (int argc, char *argv[])
{
  GMainLoop *loop;
  GstElement *pipeline, *source, *filter, *encoder, *decoder, *sink;
  GstBus *bus;
  GstCaps *caps;
  guint bus_watch_id;

  /* Initialisation */
  gst_init (&argc, &argv);

  loop = g_main_loop_new (NULL, FALSE);

  /* Create gstreamer elements */
  pipeline  = gst_pipeline_new ("yuv-pipeline");
  source    = gst_element_factory_make("v4l2src", "source");
  encoder   = gst_element_factory_make("jpegenc", "encoder");
  decoder   = gst_element_factory_make("jpegdec", "decoder");
  sink      = gst_element_factory_make("appsink", "sink");

  if (!pipeline || !source || !encoder || !decoder || !sink) {
    g_printerr ("One element could not be created. Exiting.\n");
    return -1;
  }

  /* Set up the pipeline */
  // Set properties
  g_object_set(source, "device", "/dev/video0", NULL);
  // g_object_set(encoder, "quality", 100, NULL);
  // g_object_set(sink, "location", "file.yuv", NULL);

  // Create caps filter
  caps = gst_caps_new_simple("video/x-raw",
                              "format", G_TYPE_STRING, "YUY2",
                              "width", G_TYPE_INT, 160,
                              "height", G_TYPE_INT, 120,
                              "framerate", GST_TYPE_FRACTION, 30, 1,
                              NULL);

  /* we add a message handler */
  bus = gst_pipeline_get_bus (GST_PIPELINE (pipeline));
  bus_watch_id = gst_bus_add_watch (bus, bus_call, loop);
  gst_object_unref (bus);

  /* we add all elements into the pipeline */
  /* file-source | ogg-demuxer | vorbis-decoder | converter | alsa-output */
  gst_bin_add_many (GST_BIN (pipeline), source, encoder, decoder, sink, NULL);

  /* we link the elements together */
  /* ... */
  if (!gst_element_link_filtered(source, encoder, caps) ||
        !gst_element_link(encoder, decoder) ||
        !gst_element_link(decoder, sink)) {
        g_printerr("Failed to link elements.\n");
        return -1;
    }

  // Callback
  g_object_set(G_OBJECT(sink), "emit-signals", TRUE, "sync", FALSE, NULL);
  g_signal_connect(sink, "new-sample", G_CALLBACK(example_callback), NULL);

  /* Set the pipeline to "playing" state*/
  g_print ("Now playing\n");
  gst_element_set_state (pipeline, GST_STATE_PLAYING);


  /* Iterate */
  g_print ("Running...\n");
  g_main_loop_run (loop);


  /* Out of the main loop, clean up nicely */
  g_print ("Returned, stopping playback\n");
  gst_element_set_state (pipeline, GST_STATE_NULL);

  g_print ("Deleting pipeline\n");
  gst_object_unref (GST_OBJECT (pipeline));
  g_source_remove (bus_watch_id);
  g_main_loop_unref (loop);

  return 0;
}
