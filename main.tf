# Create an arbitrary local resource


resource "null_resource"             "print-max-timeout" {
  provisioner         "local-exec" {
    command = "echo $MAX_TIMEOUT"
  }
}

resource "null_resource" "safe-local-exec-test-1" {
  provisioner         "local-exec" {
   command = "./sleepForEver.sh"
  }
}

// These are added to make sure that parsing logic works fine.
/*
resource "null_resource" "safe-local-exec-test-2" {
  provisioner         "local-exec" {  
    command = "sleep 100000"
  }
}

resource "null_resource" "local-exec-3" {
  provisioner         "local-exec" {
    command = "sleep 100000"
  }
}

*/

/* resource "null_resource" "remote-exec-4" {
  // This is test without any connection parameters
  provisioner "remote-exec" {
    inline = [
      "chmod +x /tmp/get-public-ip.sh",
      "/tmp/get-public-ip.sh > /tmp/public-ip",
    ]
  }
}
*/


