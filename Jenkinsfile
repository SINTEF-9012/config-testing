node {
   stage('Updating CTF') { // for display purposes
      checkout scm
   }
   stage('Downloading SUT') {
      sh "./download_sut.sh"
   }
   stage('Amplification') {
      sh "./download_amplifier.sh"
      sh "./set_up_amplifier.sh"
      sh "./launch_amplifier.sh"
      sh "./set_up_ctf.sh"
   }
   stage('Testing') {
      sh "./testframework/test.py"
   }
   stage('Publishing HTML Report') {
      publishHTML (target: [
          allowMissing: false,
          alwaysLinkToLastBuild: false,
          keepAll: true,
          reportDir: 'report/htmlreports',
          reportFiles: 'index.html',
          reportName: "Test Execution Report"
        ])      
   }
}
