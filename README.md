# Vanilla-Terraria-Server
<i>this is a work in progress as I learn docker. so please forgive my sloppyness

I will eventually move this process over to tshock.

Building a new docker image will download the current version the terraria-server.zip file from Terraria.org </i>


# Build command:
docker build --tag Vanilla-Terraria --file Dockerfile .

# Run container in interactive mode.
docker run -it -p 7777:7777 --memory=2048m --mount type=volume,src=terraria,dst=/home/terraria/.local/share/Terraria --name="terraria" Vanilla-Terraria

# you can restart this container if it is stopped
docker start <container−id>

# TODO:
1. Better documentation.
2. Better way to pass in variables from the docker run (ie world name, world location, world size on auto creation, player count..etc)
3. Get image pushed to docker hub (don't currently have an account there yet)

Special thanks to a few of the other people who have already solved this 'problem' in docker. looking at their Dockerfiles helped me out a lot; I mostly looked at https://github.com/JoshuaTheMiller/Vanilla-Terraria
