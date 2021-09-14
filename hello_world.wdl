version 1.0

# a comment
# another comment
# another comment
# yet another
# again
# 1.11.8 test

workflow helloworld {
    input {
      String greeting
    }
    call hello {
       input:
           greeting = greeting
     }

    meta {
        author : "Walt Shands"
        email : "wshands@gmail.com"
        description: "This is a hello world example"
     }
}

task hello {
    input {
      String greeting
    }
  command {
    echo "${greeting}"
  }

  runtime {
    maxRetries: 1
    preemptible: 1
    memory: "1 GB"
    cpu: 1
    disks: "20 HDD"
    zones: "us-central1-a us-central1-b us-east1-d us-central1-c us-central1-f us-east1-c"
    docker: "python"
  }

}
