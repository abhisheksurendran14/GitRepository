node('docker') {
    docker.withRegistry('https://hub.docker.com', 'dockabhi-jenkins-creds') {
    
        git url: "https://github.com/abhisheksurendran14/GitRepository.git", credentialsId: 'abhisheksurendran14'
    
        sh "git rev-parse HEAD > .git/commit-id"
        def commit_id = readFile('.git/commit-id').trim()
        println commit_id
        
        stage('Clone repository') {
        /* Let's make sure we have the repository cloned to our workspace */
        checkout scm
        }
    
        stage ('build')
        {
        sh "sudo docker build -t dockabhi/test_image ."
        }
    
        stage ('publish')
        {
        
        sh "sudo docker login --username=dockabhi --password=godbosons000cc"
        sh "sudo docker push dockabhi/test_image"
        }
    }
}
