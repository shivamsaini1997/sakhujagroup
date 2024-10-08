<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">

  <!-- Site Title -->
    @stack('title')

  <!-- Site Favicon -->
  <link rel="shortcut icon" href="{{Storage::url($globalSetting?$globalSetting->favicon: '')}}" type="image/x-icon">

  <!-- All CSS Files -->
  <link rel="stylesheet" href="{{url('frontend/css/all.min.css')}}">
  <link rel="stylesheet" href="{{url('frontend/css/style.css')}}">
  <link rel="stylesheet" href="{{url('frontend/css/bootstrap.min.css')}}">
  <link rel="stylesheet" href="{{url('frontend/css/meanmenu.min.css')}}">
  <link rel="stylesheet" href="{{url('frontend/css/animate.min.css')}}">
  <link rel="stylesheet" href="{{url('frontend/css/progressbar.css')}}">
  <link rel="stylesheet" href="{{url('frontend/css/swiper-bundle.min.css')}}">
  <link rel="stylesheet" href="{{url('frontend/css/animate.min.css')}}">
  <link rel="stylesheet" href="{{url('frontend/css/master.css')}}">


</head>

<body>
