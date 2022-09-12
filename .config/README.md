There are two settings in the .ecr file that are used to make the underlying Docker image for the hackpad or to spin up the Docker Compose stack; IMAGE_TAG and PROJECT_NAME

You can set IMAGE_TAG to a registry based tag like so:

IMAGE_TAG=11111111111.dkr.ecr.ap-southeast-2.amazonaws.com/myregistryname

Or just use a local tag like:

IMAGE_TAG=hackpad-base
