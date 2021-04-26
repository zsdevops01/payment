pipeline {
  agent {
    label 'NODEJS'
  }

  stages {

    stage('Prepare Artifacts') {
      steps {
        sh '''
          zip -r payment.zip payment.ini payment.py rabbitmq.py requirements.txt 
        '''
      }
    }

    stage('Upload Artifacts') {
      steps {
        sh '''
          curl -f -v -u admin:admin123 --upload-file payment.zip http://172.31.14.124:8081/repository/payment/payment.zip
        '''
      }
    }

  }

}
