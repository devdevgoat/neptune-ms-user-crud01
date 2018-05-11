npm install claudia -g
mkdir neptun-ms-user-crud01
cd neptun-ms-user-crud01/
npm init -y
npm install aws-sdk claudia-api-builder -S 
pull app.js
pull role.json
aws iam create-role \
    --role-name role-neptun-ms-user-crud01 \
    --assume-role-policy-document file://role.json

claudia create --region us-east-1 --api-module neptun-ms-user-crud01 --role neptun-ms-user-crud01 



