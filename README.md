# AquaNet

[![Docker Push](https://github.com/Clayrisee/AquaNet/workflows/docker-build-push/badge.svg)](https://github.com/Clayrisee/AquaNet/actions)

![ikan](https://user-images.githubusercontent.com/54859935/134394744-38dfcfb3-06db-4304-8b33-1fdd89bfd3ef.jpg)

## Introduction
This is API for Sea Species Detection using DETR

## Tutorial

Clone the project

```bash
  git clone https://github.com/Clayrisee/AquaNet
```

Go to the project directory

```bash
  cd AquaNet
```

Create and start API service

```bash
  docker-compose up
```

Stop and remove API service

```bash
  docker-compose down
```

  
## API Reference

Service: http://your-ip-address:8080

#### POST image

```http
  POST /predict
```
Content-Type: multipart/form-data
| Name    | Type   | Description                                         |
| :------ | :----- | :-------------------------------------------------- |
| `image` | `file` | **Required**. `image/jpeg` or `image/png` MIME Type |


## Result Example

---

**Input:**<br>
![ikan](https://user-images.githubusercontent.com/54859935/134394744-38dfcfb3-06db-4304-8b33-1fdd89bfd3ef.jpg)

**Output:**<br>
![predictions](https://user-images.githubusercontent.com/54859935/134395234-25e75485-93a9-4518-a86f-54fb9a24cec6.jpg)
  
## Feedback

If you have any feedback, please reach out to us at brian.adityaherman@gmail.com

  
## 🔗 Contact Me
[![linkedin](https://img.shields.io/badge/linkedin-0A66C2?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/haikalardikatama/)

  
