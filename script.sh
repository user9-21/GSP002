cd $HOME
rm ./.bash_history
gcloud config set compute/region us-central1
gcloud config set compute/zone us-central1-a
cd GSP002
gcloud auth list
gcloud config list project
gcloud config get-value compute/zone
gcloud config get-value compute/region
export PROJECT_ID=$GOOGLE_CLOUD_PROJECT
export ZONE=$(gcloud config get-value compute/zone)
echo $PROJECT_ID
echo $ZONE
gcloud compute instances create gcelab2 --machine-type n1-standard-2 --zone $ZONE
sudo apt-get install google-cloud-sdk
cd $HOME
vi ./.bash_history
