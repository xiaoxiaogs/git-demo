<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>电影选座</title>
    <style>
        body {
            font-family: Arial, sans-serif;
        }

        .container {
            width: 600px;
            margin: 0 auto;
        }

        .screen {
            width: 100%;
            height: 50px;
            background-color: black;
        }

        .seats {
            width: 100%;
            display: grid;
            grid-template-columns: repeat(10, 1fr);
            grid-gap: 10px;
        }

        .seat {
            width: 50px;
            height: 50px;
            background-color: white;
            border: 1px solid black;
            cursor: pointer;
        }

        .seat.selected {
            background-color: red;
        }

        .preview {
            width: 100%;
            height: 50px;
            background-color: #eee;
            margin-top: 10px;
            padding: 10px;
        }

        .preview-seat {
            width: 20px;
            height: 20px;
            margin-right: 5px;
            background-color: red;
        }
    </style>
</head>
<body>
<div class="container">
    <div class="screen"></div>
    <div class="seats">
        <div class="seat" data-seat="A1"></div>
        <div class="seat" data-seat="A2"></div>
        <div class="seat" data-seat="A3"></div>
        <div class="seat" data-seat="A4"></div>
        <div class="seat" data-seat="A5"></div>
        <div class="seat" data-seat="A6"></div>
        <div class="seat" data-seat="A7"></div>
        <div class="seat" data-seat="A8"></div>
        <div class="seat" data-seat="A9"></div>
        <div class="seat" data-seat="A10"></div>

        <div class="seat" data-seat="B1"></div>
        <div class="seat" data-seat="B2"></div>
        <div class="seat" data-seat="B3"></div>
        <div class="seat" data-seat="B4"></div>
        <div class="seat" data-seat="B5"></div>
        <div class="seat" data-seat="B6"></div>
        <div class="seat" data-seat="B7"></div>
        <div class="seat" data-seat="B8"></div>
        <div class="seat" data-seat="B9"></div>
        <div class="seat" data-seat="B10"></div>

        <div class="seat" data-seat="C1"></div>
        <div class="seat" data-seat="C2"></div>
        <div class="seat" data-seat="C3"></div>
        <div class="seat" data-seat="C4"></div>
        <div class="seat" data-seat="C5"></div>
        <div class="seat" data-seat="C6"></div>
        <div class="seat" data-seat="C7"></div>
        <div class="seat" data-seat="C8"></div>
        <div class="seat" data-seat="C9"></div>
        <div class="seat" data-seat="C10"></div>

        <div class="seat" data-seat="D1"></div>
        <div class="seat" data-seat="D2"></div>
        <div class="seat" data-seat="D3"></div>
        <div class="seat" data-seat="D4"></div>
        <div class="seat" data-seat="D5"></div>
        <div class="seat" data-seat="D6"></div>
        <div class="seat" data-seat="D7"></div>
        <div class="seat" data-seat="D8"></div>
        <div class="seat" data-seat="D9"></div>
        <div class="seat" data-seat="D10"></div>
    </div>

    <div class="preview">
        已选座位：
        <div class="preview-seat"></div>
        <div class="preview-seat"></div>
        <div class="preview-seat"></div>
    </div>
</div>

<script>
    const seats = document.querySelectorAll('.seat');
    const preview = document.querySelector('.preview');
    const previewSeats = preview.querySelectorAll('.preview-seat');

    seats.forEach(seat => {
        seat.addEventListener('click', function() {
            seat.classList.toggle('selected');

            // 更新已选座位预览
            updatePreview();
        });
    });

    function updatePreview() {
        // 获取所有已选座位的座位号
        const selectedSeats = document.querySelectorAll('.seat.selected');
        const selectedSeatNumbers = [];
        selectedSeats.forEach(seat => {
            selectedSeatNumbers.push(seat.getAttribute('data-seat'));
        });

        // 更新已选座位预览
    }
</script>