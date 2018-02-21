node("docker") {
    docker.withRegistry('https://registry.hub.docker.com', 'dockabhi-jenkins-creds') {
    
        git url: "https://github.com/abhisheksurendran14/GitRepository.git", credentialsId: 'abhisheksurendran14'
    
        sh "git rev-parse HEAD > .git/commit-id"
        def commit_id = readFile('.git/commit-id').trim()
        println commit_id
    
        stage "build"
        def app = docker.build "abhisheksurendran14/GitRepository"
    
        stage "publish"
        app.push 'master'
        app.push "${commit_id}"
    }
}
