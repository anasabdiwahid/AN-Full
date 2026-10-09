-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 09, 2026 at 05:19 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `an_chat_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `blocked_users`
--

CREATE TABLE `blocked_users` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `blocked_user_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `calls`
--

CREATE TABLE `calls` (
  `id` int(11) NOT NULL,
  `caller_id` int(11) NOT NULL,
  `receiver_id` int(11) NOT NULL,
  `call_type` enum('voice','video') NOT NULL DEFAULT 'voice',
  `status` enum('calling','answered','declined','missed','ended') DEFAULT 'calling',
  `duration` int(11) DEFAULT 0,
  `started_at` datetime DEFAULT NULL,
  `ended_at` datetime DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `calls`
--

INSERT INTO `calls` (`id`, `caller_id`, `receiver_id`, `call_type`, `status`, `duration`, `started_at`, `ended_at`, `created_at`) VALUES
(1, 1, 2, 'video', 'ended', 45, '2026-10-08 16:22:14', '2026-10-08 16:22:14', '2026-10-08 13:22:14'),
(2, 3, 4, 'voice', 'ended', 31, '2026-10-08 16:38:54', '2026-10-08 16:39:08', '2026-10-08 13:38:37'),
(3, 3, 4, 'video', 'ended', 11, '2026-10-08 16:39:22', '2026-10-08 16:39:33', '2026-10-08 13:39:12'),
(4, 3, 4, 'voice', 'ended', 10, '2026-10-08 16:48:30', '2026-10-08 16:48:40', '2026-10-08 13:48:15'),
(5, 4, 3, 'voice', 'ended', 19, '2026-10-08 16:54:40', '2026-10-08 16:55:00', '2026-10-08 13:53:14'),
(6, 3, 4, 'video', 'ended', 37, '2026-10-08 16:55:08', '2026-10-08 16:55:46', '2026-10-08 13:55:03'),
(7, 3, 4, 'voice', 'declined', 0, '2026-10-08 17:17:38', '2026-10-08 17:17:43', '2026-10-08 14:17:38'),
(8, 4, 3, 'voice', 'declined', 0, '2026-10-08 17:17:47', '2026-10-08 17:17:54', '2026-10-08 14:17:47'),
(9, 3, 5, 'voice', 'missed', 0, '2026-10-09 03:37:35', '2026-10-09 03:38:10', '2026-10-09 00:37:35'),
(10, 5, 3, 'voice', 'missed', 0, '2026-10-09 03:41:55', '2026-10-09 03:42:30', '2026-10-09 00:41:55'),
(11, 1, 2, 'voice', 'ended', 14, '2026-10-09 03:51:19', '2026-10-09 03:51:19', '2026-10-09 00:51:19'),
(12, 5, 3, 'voice', 'missed', 0, '2026-10-09 03:57:55', '2026-10-09 03:58:30', '2026-10-09 00:57:55'),
(13, 3, 5, 'voice', 'ended', 0, '2026-10-09 03:58:26', '2026-10-09 03:58:28', '2026-10-09 00:58:26'),
(16, 4, 3, 'voice', 'ended', 0, '2026-10-09 04:39:29', '2026-10-09 04:39:43', '2026-10-09 01:39:29'),
(17, 4, 3, 'voice', 'missed', 0, '2026-10-09 04:41:46', '2026-10-09 04:42:21', '2026-10-09 01:41:46'),
(18, 5, 3, 'voice', 'ended', 0, '2026-10-09 04:50:17', '2026-10-09 04:50:29', '2026-10-09 01:50:17'),
(19, 5, 3, 'voice', 'missed', 0, '2026-10-09 04:52:17', '2026-10-09 04:52:52', '2026-10-09 01:52:17'),
(20, 5, 3, 'voice', 'ended', 0, '2026-10-09 04:55:21', '2026-10-09 04:55:35', '2026-10-09 01:55:21'),
(22, 5, 3, 'voice', 'missed', 0, '2026-10-09 05:04:11', '2026-10-09 05:04:46', '2026-10-09 02:04:11'),
(23, 5, 3, 'voice', 'missed', 0, '2026-10-09 05:07:00', '2026-10-09 05:07:35', '2026-10-09 02:07:00'),
(24, 1, 2, 'voice', 'ended', 42, '2026-10-09 05:09:50', '2026-10-09 05:09:50', '2026-10-09 02:09:50'),
(25, 5, 3, 'voice', 'missed', 0, '2026-10-09 05:15:41', '2026-10-09 05:16:16', '2026-10-09 02:15:41'),
(26, 5, 3, 'voice', 'ended', 0, '2026-10-09 05:17:51', '2026-10-09 05:18:00', '2026-10-09 02:17:51'),
(27, 3, 5, 'voice', 'missed', 0, '2026-10-09 05:18:06', '2026-10-09 05:18:42', '2026-10-09 02:18:06'),
(30, 5, 3, 'voice', 'ended', 0, '2026-10-09 05:27:49', '2026-10-09 05:28:19', '2026-10-09 02:27:47'),
(31, 5, 3, 'voice', 'ended', 10, '2026-10-09 05:30:31', '2026-10-09 05:30:41', '2026-10-09 02:30:29'),
(32, 3, 5, 'video', 'ended', 14, '2026-10-09 05:30:53', '2026-10-09 05:31:08', '2026-10-09 02:30:48'),
(33, 6, 4, 'voice', 'ended', 3, '2026-10-09 05:57:12', '2026-10-09 05:57:16', '2026-10-09 02:57:06'),
(34, 4, 6, 'voice', 'ended', 0, '2026-10-09 05:57:37', '2026-10-09 05:57:39', '2026-10-09 02:57:37'),
(35, 6, 4, 'voice', 'ended', 6, '2026-10-09 05:57:53', '2026-10-09 05:57:59', '2026-10-09 02:57:46'),
(36, 6, 4, 'voice', 'declined', 0, '2026-10-09 06:16:25', '2026-10-09 06:16:29', '2026-10-09 03:16:25');

-- --------------------------------------------------------

--
-- Table structure for table `call_signals`
--

CREATE TABLE `call_signals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `call_id` int(11) NOT NULL,
  `from_user_id` int(11) NOT NULL,
  `to_user_id` int(11) NOT NULL,
  `signal_type` enum('offer','answer','ice') NOT NULL,
  `payload` longtext NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `call_signals`
--

INSERT INTO `call_signals` (`id`, `call_id`, `from_user_id`, `to_user_id`, `signal_type`, `payload`, `created_at`) VALUES
(3, 30, 5, 3, 'offer', '{\"call_type\":\"voice\",\"caller_name\":\"A/N Admin\",\"caller_image\":\"assets/images/logo.png\",\"sdp\":{\"type\":\"offer\",\"sdp\":\"v=0\\r\\no=- 597911700261620998 2 IN IP4 127.0.0.1\\r\\ns=-\\r\\nt=0 0\\r\\na=group:BUNDLE 0\\r\\na=extmap-allow-mixed\\r\\na=msid-semantic: WMS 2f3c406f-59fa-4bc8-b965-9c5144b17e2d\\r\\nm=audio 9 UDP/TLS/RTP/SAVPF 111 63 9 0 8 13 110 126\\r\\nc=IN IP4 0.0.0.0\\r\\na=rtcp:9 IN IP4 0.0.0.0\\r\\na=ice-ufrag:mLt/\\r\\na=ice-pwd:icrjp1LaSXCGbSFUNipAEMF9\\r\\na=ice-options:trickle\\r\\na=fingerprint:sha-256 0B:1E:4D:BB:31:45:28:BC:70:75:96:E8:6B:77:E6:CB:4A:2A:39:CD:5C:4B:14:93:D4:4A:18:AE:DE:09:8E:D3\\r\\na=setup:actpass\\r\\na=mid:0\\r\\na=extmap:1 urn:ietf:params:rtp-hdrext:ssrc-audio-level\\r\\na=extmap:2 http://www.webrtc.org/experiments/rtp-hdrext/abs-send-time\\r\\na=extmap:3 http://www.ietf.org/id/draft-holmer-rmcat-transport-wide-cc-extensions-01\\r\\na=extmap:4 urn:ietf:params:rtp-hdrext:sdes:mid\\r\\na=sendrecv\\r\\na=msid:2f3c406f-59fa-4bc8-b965-9c5144b17e2d 52ddb140-bce1-44c9-8a95-1b38e4457090\\r\\na=rtcp-mux\\r\\na=rtcp-rsize\\r\\na=rtcp-xr:rcvr-rtt=all\\r\\na=rtpmap:111 opus/48000/2\\r\\na=rtcp-fb:111 transport-cc\\r\\na=fmtp:111 minptime=10;useinbandfec=1\\r\\na=rtpmap:63 red/48000/2\\r\\na=fmtp:63 111/111\\r\\na=rtpmap:9 G722/8000\\r\\na=rtpmap:0 PCMU/8000\\r\\na=rtpmap:8 PCMA/8000\\r\\na=rtpmap:13 CN/8000\\r\\na=rtpmap:110 telephone-event/48000\\r\\na=rtpmap:126 telephone-event/8000\\r\\na=ssrc:2483715777 cname:O/su4mQxDrUQTjjD\\r\\na=ssrc:2483715777 msid:2f3c406f-59fa-4bc8-b965-9c5144b17e2d 52ddb140-bce1-44c9-8a95-1b38e4457090\\r\\n\"}}', '2026-10-09 02:27:47'),
(4, 30, 5, 3, 'ice', '{\"candidate\":{\"candidate\":\"candidate:2536506065 1 udp 2122260223 172.20.10.4 64722 typ host generation 0 ufrag mLt/ network-id 1 network-cost 10\",\"sdpMid\":\"0\",\"sdpMLineIndex\":0,\"usernameFragment\":\"mLt/\"}}', '2026-10-09 02:27:47'),
(5, 30, 5, 3, 'ice', '{\"candidate\":{\"candidate\":\"candidate:1771755077 1 tcp 1518280447 172.20.10.4 9 typ host tcptype active generation 0 ufrag mLt/ network-id 1 network-cost 10\",\"sdpMid\":\"0\",\"sdpMLineIndex\":0,\"usernameFragment\":\"mLt/\"}}', '2026-10-09 02:27:47'),
(6, 30, 5, 3, 'ice', '{\"candidate\":{\"candidate\":\"candidate:3620368504 1 udp 1686052607 192.145.175.133 49799 typ srflx raddr 172.20.10.4 rport 64722 generation 0 ufrag mLt/ network-id 1 network-cost 10\",\"sdpMid\":\"0\",\"sdpMLineIndex\":0,\"usernameFragment\":\"mLt/\"}}', '2026-10-09 02:27:47'),
(7, 30, 3, 5, 'answer', '{\"sdp\":{\"type\":\"answer\",\"sdp\":\"v=0\\r\\no=- 2520071336520372530 2 IN IP4 127.0.0.1\\r\\ns=-\\r\\nt=0 0\\r\\na=group:BUNDLE 0\\r\\na=extmap-allow-mixed\\r\\na=msid-semantic: WMS 506456c3-970c-4dc2-abee-013e80123592\\r\\nm=audio 9 UDP/TLS/RTP/SAVPF 111 63 9 0 8 13 110 126\\r\\nc=IN IP4 0.0.0.0\\r\\na=rtcp:9 IN IP4 0.0.0.0\\r\\na=ice-ufrag:YyzC\\r\\na=ice-pwd:mccCVhRvxU/oGgxfl4ngX/4I\\r\\na=ice-options:trickle\\r\\na=fingerprint:sha-256 EA:48:57:D7:CB:87:FE:C7:0B:FE:15:8A:AC:46:4A:23:13:6F:88:05:D5:4E:7E:B5:2C:34:B9:DF:E3:64:D7:02\\r\\na=setup:active\\r\\na=mid:0\\r\\na=extmap:1 urn:ietf:params:rtp-hdrext:ssrc-audio-level\\r\\na=extmap:2 http://www.webrtc.org/experiments/rtp-hdrext/abs-send-time\\r\\na=extmap:3 http://www.ietf.org/id/draft-holmer-rmcat-transport-wide-cc-extensions-01\\r\\na=extmap:4 urn:ietf:params:rtp-hdrext:sdes:mid\\r\\na=sendrecv\\r\\na=msid:506456c3-970c-4dc2-abee-013e80123592 60e77120-7889-4224-aa5d-c6a7ecb4a8bf\\r\\na=rtcp-mux\\r\\na=rtcp-rsize\\r\\na=rtcp-xr:rcvr-rtt=all\\r\\na=rtpmap:111 opus/48000/2\\r\\na=rtcp-fb:111 transport-cc\\r\\na=fmtp:111 minptime=10;useinbandfec=1\\r\\na=rtpmap:63 red/48000/2\\r\\na=fmtp:63 111/111\\r\\na=rtpmap:9 G722/8000\\r\\na=rtpmap:0 PCMU/8000\\r\\na=rtpmap:8 PCMA/8000\\r\\na=rtpmap:13 CN/8000\\r\\na=rtpmap:110 telephone-event/48000\\r\\na=rtpmap:126 telephone-event/8000\\r\\na=ssrc:162102707 cname:P7/XTzr9eflbGTxi\\r\\n\"}}', '2026-10-09 02:27:49'),
(8, 30, 3, 5, 'ice', '{\"candidate\":{\"candidate\":\"candidate:3201829089 1 udp 2122260223 172.20.10.4 63306 typ host generation 0 ufrag YyzC network-id 1 network-cost 10\",\"sdpMid\":\"0\",\"sdpMLineIndex\":0,\"usernameFragment\":\"YyzC\"}}', '2026-10-09 02:27:49'),
(9, 30, 3, 5, 'ice', '{\"candidate\":{\"candidate\":\"candidate:1081269365 1 tcp 1518280447 172.20.10.4 9 typ host tcptype active generation 0 ufrag YyzC network-id 1 network-cost 10\",\"sdpMid\":\"0\",\"sdpMLineIndex\":0,\"usernameFragment\":\"YyzC\"}}', '2026-10-09 02:27:49'),
(10, 31, 5, 3, 'offer', '{\"call_type\":\"voice\",\"caller_name\":\"A/N Admin\",\"caller_image\":\"assets/images/logo.png\",\"sdp\":{\"type\":\"offer\",\"sdp\":\"v=0\\r\\no=- 84426506911822593 2 IN IP4 127.0.0.1\\r\\ns=-\\r\\nt=0 0\\r\\na=group:BUNDLE 0\\r\\na=extmap-allow-mixed\\r\\na=msid-semantic: WMS 0277a815-92cd-429b-ae7f-5df907bdc86e\\r\\nm=audio 9 UDP/TLS/RTP/SAVPF 111 63 9 0 8 13 110 126\\r\\nc=IN IP4 0.0.0.0\\r\\na=rtcp:9 IN IP4 0.0.0.0\\r\\na=ice-ufrag:Kdyu\\r\\na=ice-pwd:kYJfiMgG3tilrA26yO5Lq5yu\\r\\na=ice-options:trickle\\r\\na=fingerprint:sha-256 E8:DD:04:C4:26:1C:54:E9:18:7B:8A:E1:A5:84:CD:B1:4C:81:02:5C:FC:EB:66:AD:8E:43:D1:03:52:07:7F:4D\\r\\na=setup:actpass\\r\\na=mid:0\\r\\na=extmap:1 urn:ietf:params:rtp-hdrext:ssrc-audio-level\\r\\na=extmap:2 http://www.webrtc.org/experiments/rtp-hdrext/abs-send-time\\r\\na=extmap:3 http://www.ietf.org/id/draft-holmer-rmcat-transport-wide-cc-extensions-01\\r\\na=extmap:4 urn:ietf:params:rtp-hdrext:sdes:mid\\r\\na=sendrecv\\r\\na=msid:0277a815-92cd-429b-ae7f-5df907bdc86e 828318a0-8510-4b8b-8e9c-a4cc3d8eef6f\\r\\na=rtcp-mux\\r\\na=rtcp-rsize\\r\\na=rtcp-xr:rcvr-rtt=all\\r\\na=rtpmap:111 opus/48000/2\\r\\na=rtcp-fb:111 transport-cc\\r\\na=fmtp:111 minptime=10;useinbandfec=1\\r\\na=rtpmap:63 red/48000/2\\r\\na=fmtp:63 111/111\\r\\na=rtpmap:9 G722/8000\\r\\na=rtpmap:0 PCMU/8000\\r\\na=rtpmap:8 PCMA/8000\\r\\na=rtpmap:13 CN/8000\\r\\na=rtpmap:110 telephone-event/48000\\r\\na=rtpmap:126 telephone-event/8000\\r\\na=ssrc:1422752 cname:Zq1fHK9QtEedQvKz\\r\\na=ssrc:1422752 msid:0277a815-92cd-429b-ae7f-5df907bdc86e 828318a0-8510-4b8b-8e9c-a4cc3d8eef6f\\r\\n\"}}', '2026-10-09 02:30:29'),
(11, 31, 5, 3, 'ice', '{\"candidate\":{\"candidate\":\"candidate:1494093222 1 udp 2122260223 172.20.10.4 55630 typ host generation 0 ufrag Kdyu network-id 1 network-cost 10\",\"sdpMid\":\"0\",\"sdpMLineIndex\":0,\"usernameFragment\":\"Kdyu\"}}', '2026-10-09 02:30:29'),
(12, 31, 5, 3, 'ice', '{\"candidate\":{\"candidate\":\"candidate:2812598578 1 tcp 1518280447 172.20.10.4 9 typ host tcptype active generation 0 ufrag Kdyu network-id 1 network-cost 10\",\"sdpMid\":\"0\",\"sdpMLineIndex\":0,\"usernameFragment\":\"Kdyu\"}}', '2026-10-09 02:30:29'),
(13, 31, 5, 3, 'ice', '{\"candidate\":{\"candidate\":\"candidate:435453711 1 udp 1686052607 192.145.175.133 49801 typ srflx raddr 172.20.10.4 rport 55630 generation 0 ufrag Kdyu network-id 1 network-cost 10\",\"sdpMid\":\"0\",\"sdpMLineIndex\":0,\"usernameFragment\":\"Kdyu\"}}', '2026-10-09 02:30:29'),
(14, 31, 3, 5, 'answer', '{\"sdp\":{\"type\":\"answer\",\"sdp\":\"v=0\\r\\no=- 554823456557524630 2 IN IP4 127.0.0.1\\r\\ns=-\\r\\nt=0 0\\r\\na=group:BUNDLE 0\\r\\na=extmap-allow-mixed\\r\\na=msid-semantic: WMS e28d636b-ab9b-436e-8c1c-7e5ba9ead3cf\\r\\nm=audio 9 UDP/TLS/RTP/SAVPF 111 63 9 0 8 13 110 126\\r\\nc=IN IP4 0.0.0.0\\r\\na=rtcp:9 IN IP4 0.0.0.0\\r\\na=ice-ufrag:NY7j\\r\\na=ice-pwd:1/u331WHpUXdJOu7bkswFIQf\\r\\na=ice-options:trickle\\r\\na=fingerprint:sha-256 F8:16:B8:6B:8D:C5:F0:84:84:4A:18:34:73:4C:91:96:50:F4:9F:BF:B8:07:32:7E:AA:32:20:F1:7E:04:FF:D3\\r\\na=setup:active\\r\\na=mid:0\\r\\na=extmap:1 urn:ietf:params:rtp-hdrext:ssrc-audio-level\\r\\na=extmap:2 http://www.webrtc.org/experiments/rtp-hdrext/abs-send-time\\r\\na=extmap:3 http://www.ietf.org/id/draft-holmer-rmcat-transport-wide-cc-extensions-01\\r\\na=extmap:4 urn:ietf:params:rtp-hdrext:sdes:mid\\r\\na=sendrecv\\r\\na=msid:e28d636b-ab9b-436e-8c1c-7e5ba9ead3cf 30653b98-4b62-495c-862b-e0f07a44ec01\\r\\na=rtcp-mux\\r\\na=rtcp-rsize\\r\\na=rtcp-xr:rcvr-rtt=all\\r\\na=rtpmap:111 opus/48000/2\\r\\na=rtcp-fb:111 transport-cc\\r\\na=fmtp:111 minptime=10;useinbandfec=1\\r\\na=rtpmap:63 red/48000/2\\r\\na=fmtp:63 111/111\\r\\na=rtpmap:9 G722/8000\\r\\na=rtpmap:0 PCMU/8000\\r\\na=rtpmap:8 PCMA/8000\\r\\na=rtpmap:13 CN/8000\\r\\na=rtpmap:110 telephone-event/48000\\r\\na=rtpmap:126 telephone-event/8000\\r\\na=ssrc:2437178938 cname:Fa74mgvdapr2Q2EM\\r\\n\"}}', '2026-10-09 02:30:31'),
(15, 31, 3, 5, 'ice', '{\"candidate\":{\"candidate\":\"candidate:479984302 1 udp 2122260223 172.20.10.4 51846 typ host generation 0 ufrag NY7j network-id 1 network-cost 10\",\"sdpMid\":\"0\",\"sdpMLineIndex\":0,\"usernameFragment\":\"NY7j\"}}', '2026-10-09 02:30:31'),
(16, 31, 3, 5, 'ice', '{\"candidate\":{\"candidate\":\"candidate:1649678390 1 tcp 1518280447 172.20.10.4 9 typ host tcptype active generation 0 ufrag NY7j network-id 1 network-cost 10\",\"sdpMid\":\"0\",\"sdpMLineIndex\":0,\"usernameFragment\":\"NY7j\"}}', '2026-10-09 02:30:31'),
(17, 32, 3, 5, 'offer', '{\"call_type\":\"video\",\"caller_name\":\"Anas Abdiwahid\",\"caller_image\":\"assets/images/default-avatar.png\",\"sdp\":{\"type\":\"offer\",\"sdp\":\"v=0\\r\\no=- 2777153298791477734 2 IN IP4 127.0.0.1\\r\\ns=-\\r\\nt=0 0\\r\\na=group:BUNDLE 0 1\\r\\na=extmap-allow-mixed\\r\\na=msid-semantic: WMS eac0f543-c086-419f-9778-ac42e6927f9b\\r\\nm=audio 9 UDP/TLS/RTP/SAVPF 111 63 9 0 8 13 110 126\\r\\nc=IN IP4 0.0.0.0\\r\\na=rtcp:9 IN IP4 0.0.0.0\\r\\na=ice-ufrag:Ee90\\r\\na=ice-pwd:lQXNuubrLxbS0zRIAX7YcOhZ\\r\\na=ice-options:trickle\\r\\na=fingerprint:sha-256 74:CA:AD:71:66:3A:E4:6E:BE:BB:2D:DD:F0:72:E4:85:12:09:61:AA:B4:54:88:65:F5:A0:07:1D:72:AA:7D:BC\\r\\na=setup:actpass\\r\\na=mid:0\\r\\na=extmap:1 urn:ietf:params:rtp-hdrext:ssrc-audio-level\\r\\na=extmap:2 http://www.webrtc.org/experiments/rtp-hdrext/abs-send-time\\r\\na=extmap:3 http://www.ietf.org/id/draft-holmer-rmcat-transport-wide-cc-extensions-01\\r\\na=extmap:4 urn:ietf:params:rtp-hdrext:sdes:mid\\r\\na=sendrecv\\r\\na=msid:eac0f543-c086-419f-9778-ac42e6927f9b b2ccc728-fc74-4247-a2c2-bd3d58b4a73e\\r\\na=rtcp-mux\\r\\na=rtcp-rsize\\r\\na=rtcp-xr:rcvr-rtt=all\\r\\na=rtpmap:111 opus/48000/2\\r\\na=rtcp-fb:111 transport-cc\\r\\na=fmtp:111 minptime=10;useinbandfec=1\\r\\na=rtpmap:63 red/48000/2\\r\\na=fmtp:63 111/111\\r\\na=rtpmap:9 G722/8000\\r\\na=rtpmap:0 PCMU/8000\\r\\na=rtpmap:8 PCMA/8000\\r\\na=rtpmap:13 CN/8000\\r\\na=rtpmap:110 telephone-event/48000\\r\\na=rtpmap:126 telephone-event/8000\\r\\na=ssrc:252286018 cname:s1yFg1yRUPG4MD3Q\\r\\na=ssrc:252286018 msid:eac0f543-c086-419f-9778-ac42e6927f9b b2ccc728-fc74-4247-a2c2-bd3d58b4a73e\\r\\nm=video 9 UDP/TLS/RTP/SAVPF 96 97 102 103 104 107 108 109 114 115 116 117 39 40 45 46 98 99 100 101 118 119 49 50 122 123 124\\r\\nc=IN IP4 0.0.0.0\\r\\na=rtcp:9 IN IP4 0.0.0.0\\r\\na=ice-ufrag:Ee90\\r\\na=ice-pwd:lQXNuubrLxbS0zRIAX7YcOhZ\\r\\na=ice-options:trickle\\r\\na=fingerprint:sha-256 74:CA:AD:71:66:3A:E4:6E:BE:BB:2D:DD:F0:72:E4:85:12:09:61:AA:B4:54:88:65:F5:A0:07:1D:72:AA:7D:BC\\r\\na=setup:actpass\\r\\na=mid:1\\r\\na=extmap:14 urn:ietf:params:rtp-hdrext:toffset\\r\\na=extmap:2 http://www.webrtc.org/experiments/rtp-hdrext/abs-send-time\\r\\na=extmap:13 urn:3gpp:video-orientation\\r\\na=extmap:3 http://www.ietf.org/id/draft-holmer-rmcat-transport-wide-cc-extensions-01\\r\\na=extmap:5 http://www.webrtc.org/experiments/rtp-hdrext/playout-delay\\r\\na=extmap:6 http://www.webrtc.org/experiments/rtp-hdrext/video-content-type\\r\\na=extmap:7 http://www.webrtc.org/experiments/rtp-hdrext/video-timing\\r\\na=extmap:8 http://www.webrtc.org/experiments/rtp-hdrext/color-space\\r\\na=extmap:4 urn:ietf:params:rtp-hdrext:sdes:mid\\r\\na=extmap:10 urn:ietf:params:rtp-hdrext:sdes:rtp-stream-id\\r\\na=extmap:11 urn:ietf:params:rtp-hdrext:sdes:repaired-rtp-stream-id\\r\\na=sendrecv\\r\\na=msid:eac0f543-c086-419f-9778-ac42e6927f9b 672a75ba-8b01-46c4-9ff8-4244bd1ea3ed\\r\\na=rtcp-mux\\r\\na=rtcp-rsize\\r\\na=rtcp-xr:rcvr-rtt=all\\r\\na=rtpmap:96 VP8/90000\\r\\na=rtcp-fb:96 goog-remb\\r\\na=rtcp-fb:96 transport-cc\\r\\na=rtcp-fb:96 ccm fir\\r\\na=rtcp-fb:96 nack\\r\\na=rtcp-fb:96 nack pli\\r\\na=rtpmap:97 rtx/90000\\r\\na=fmtp:97 apt=96\\r\\na=rtpmap:102 H264/90000\\r\\na=rtcp-fb:102 goog-remb\\r\\na=rtcp-fb:102 transport-cc\\r\\na=rtcp-fb:102 ccm fir\\r\\na=rtcp-fb:102 nack\\r\\na=rtcp-fb:102 nack pli\\r\\na=fmtp:102 level-asymmetry-allowed=1;packetization-mode=1;profile-level-id=42001f\\r\\na=rtpmap:103 rtx/90000\\r\\na=fmtp:103 apt=102\\r\\na=rtpmap:104 H264/90000\\r\\na=rtcp-fb:104 goog-remb\\r\\na=rtcp-fb:104 transport-cc\\r\\na=rtcp-fb:104 ccm fir\\r\\na=rtcp-fb:104 nack\\r\\na=rtcp-fb:104 nack pli\\r\\na=fmtp:104 level-asymmetry-allowed=1;packetization-mode=0;profile-level-id=42001f\\r\\na=rtpmap:107 rtx/90000\\r\\na=fmtp:107 apt=104\\r\\na=rtpmap:108 H264/90000\\r\\na=rtcp-fb:108 goog-remb\\r\\na=rtcp-fb:108 transport-cc\\r\\na=rtcp-fb:108 ccm fir\\r\\na=rtcp-fb:108 nack\\r\\na=rtcp-fb:108 nack pli\\r\\na=fmtp:108 level-asymmetry-allowed=1;packetization-mode=1;profile-level-id=42e01f\\r\\na=rtpmap:109 rtx/90000\\r\\na=fmtp:109 apt=108\\r\\na=rtpmap:114 H264/90000\\r\\na=rtcp-fb:114 goog-remb\\r\\na=rtcp-fb:114 transport-cc\\r\\na=rtcp-fb:114 ccm fir\\r\\na=rtcp-fb:114 nack\\r\\na=rtcp-fb:114 nack pli\\r\\na=fmtp:114 level-asymmetry-allowed=1;packetization-mode=0;profile-level-id=42e01f\\r\\na=rtpmap:115 rtx/90000\\r\\na=fmtp:115 apt=114\\r\\na=rtpmap:116 H264/90000\\r\\na=rtcp-fb:116 goog-remb\\r\\na=rtcp-fb:116 transport-cc\\r\\na=rtcp-fb:116 ccm fir\\r\\na=rtcp-fb:116 nack\\r\\na=rtcp-fb:116 nack pli\\r\\na=fmtp:116 level-asymmetry-allowed=1;packetization-mode=1;profile-level-id=4d001f\\r\\na=rtpmap:117 rtx/90000\\r\\na=fmtp:117 apt=116\\r\\na=rtpmap:39 H264/90000\\r\\na=rtcp-fb:39 goog-remb\\r\\na=rtcp-fb:39 transport-cc\\r\\na=rtcp-fb:39 ccm fir\\r\\na=rtcp-fb:39 nack\\r\\na=rtcp-fb:39 nack pli\\r\\na=fmtp:39 level-asymmetry-allowed=1;packetization-mode=0;profile-level-id=4d001f\\r\\na=rtpmap:40 rtx/90000\\r\\na=fmtp:40 apt=39\\r\\na=rtpmap:45 AV1/90000\\r\\na=rtcp-fb:45 goog-remb\\r\\na=rtcp-fb:45 transport-cc\\r\\na=rtcp-fb:45 ccm fir\\r\\na=rtcp-fb:45 nack\\r\\na=rtcp-fb:45 nack pli\\r\\na=fmtp:45 level-idx=5;profile=0;tier=0\\r\\na=rtpmap:46 rtx/90000\\r\\na=fmtp:46 apt=45\\r\\na=rtpmap:98 VP9/90000\\r\\na=rtcp-fb:98 goog-remb\\r\\na=rtcp-fb:98 transport-cc\\r\\na=rtcp-fb:98 ccm fir\\r\\na=rtcp-fb:98 nack\\r\\na=rtcp-fb:98 nack pli\\r\\na=fmtp:98 profile-id=0\\r\\na=rtpmap:99 rtx/90000\\r\\na=fmtp:99 apt=98\\r\\na=rtpmap:100 VP9/90000\\r\\na=rtcp-fb:100 goog-remb\\r\\na=rtcp-fb:100 transport-cc\\r\\na=rtcp-fb:100 ccm fir\\r\\na=rtcp-fb:100 nack\\r\\na=rtcp-fb:100 nack pli\\r\\na=fmtp:100 profile-id=2\\r\\na=rtpmap:101 rtx/90000\\r\\na=fmtp:101 apt=100\\r\\na=rtpmap:118 H264/90000\\r\\na=rtcp-fb:118 goog-remb\\r\\na=rtcp-fb:118 transport-cc\\r\\na=rtcp-fb:118 ccm fir\\r\\na=rtcp-fb:118 nack\\r\\na=rtcp-fb:118 nack pli\\r\\na=fmtp:118 level-asymmetry-allowed=1;packetization-mode=1;profile-level-id=64001f\\r\\na=rtpmap:119 rtx/90000\\r\\na=fmtp:119 apt=118\\r\\na=rtpmap:49 H265/90000\\r\\na=rtcp-fb:49 goog-remb\\r\\na=rtcp-fb:49 transport-cc\\r\\na=rtcp-fb:49 ccm fir\\r\\na=rtcp-fb:49 nack\\r\\na=rtcp-fb:49 nack pli\\r\\na=fmtp:49 level-id=93;profile-id=1;tier-flag=0;tx-mode=SRST\\r\\na=rtpmap:50 rtx/90000\\r\\na=fmtp:50 apt=49\\r\\na=rtpmap:122 red/90000\\r\\na=rtpmap:123 rtx/90000\\r\\na=fmtp:123 apt=122\\r\\na=rtpmap:124 ulpfec/90000\\r\\na=ssrc-group:FID 2479559590 883274157\\r\\na=ssrc:2479559590 cname:s1yFg1yRUPG4MD3Q\\r\\na=ssrc:2479559590 msid:eac0f543-c086-419f-9778-ac42e6927f9b 672a75ba-8b01-46c4-9ff8-4244bd1ea3ed\\r\\na=ssrc:883274157 cname:s1yFg1yRUPG4MD3Q\\r\\na=ssrc:883274157 msid:eac0f543-c086-419f-9778-ac42e6927f9b 672a75ba-8b01-46c4-9ff8-4244bd1ea3ed\\r\\n\"}}', '2026-10-09 02:30:48'),
(18, 32, 3, 5, 'ice', '{\"candidate\":{\"candidate\":\"candidate:1243263613 1 udp 2122260223 172.20.10.4 60744 typ host generation 0 ufrag Ee90 network-id 1 network-cost 10\",\"sdpMid\":\"0\",\"sdpMLineIndex\":0,\"usernameFragment\":\"Ee90\"}}', '2026-10-09 02:30:48'),
(19, 32, 3, 5, 'ice', '{\"candidate\":{\"candidate\":\"candidate:1243263613 1 udp 2122260223 172.20.10.4 60745 typ host generation 0 ufrag Ee90 network-id 1 network-cost 10\",\"sdpMid\":\"1\",\"sdpMLineIndex\":1,\"usernameFragment\":\"Ee90\"}}', '2026-10-09 02:30:48'),
(20, 32, 3, 5, 'ice', '{\"candidate\":{\"candidate\":\"candidate:3031459561 1 tcp 1518280447 172.20.10.4 9 typ host tcptype active generation 0 ufrag Ee90 network-id 1 network-cost 10\",\"sdpMid\":\"1\",\"sdpMLineIndex\":1,\"usernameFragment\":\"Ee90\"}}', '2026-10-09 02:30:48'),
(21, 32, 3, 5, 'ice', '{\"candidate\":{\"candidate\":\"candidate:3031459561 1 tcp 1518280447 172.20.10.4 9 typ host tcptype active generation 0 ufrag Ee90 network-id 1 network-cost 10\",\"sdpMid\":\"0\",\"sdpMLineIndex\":0,\"usernameFragment\":\"Ee90\"}}', '2026-10-09 02:30:48'),
(22, 32, 3, 5, 'ice', '{\"candidate\":{\"candidate\":\"candidate:182501588 1 udp 1686052607 192.145.175.133 49804 typ srflx raddr 172.20.10.4 rport 60745 generation 0 ufrag Ee90 network-id 1 network-cost 10\",\"sdpMid\":\"1\",\"sdpMLineIndex\":1,\"usernameFragment\":\"Ee90\"}}', '2026-10-09 02:30:48'),
(23, 32, 3, 5, 'ice', '{\"candidate\":{\"candidate\":\"candidate:182501588 1 udp 1686052607 192.145.175.133 49803 typ srflx raddr 172.20.10.4 rport 60744 generation 0 ufrag Ee90 network-id 1 network-cost 10\",\"sdpMid\":\"0\",\"sdpMLineIndex\":0,\"usernameFragment\":\"Ee90\"}}', '2026-10-09 02:30:48'),
(24, 32, 5, 3, 'answer', '{\"sdp\":{\"type\":\"answer\",\"sdp\":\"v=0\\r\\no=- 6866811930524472624 2 IN IP4 127.0.0.1\\r\\ns=-\\r\\nt=0 0\\r\\na=group:BUNDLE 0 1\\r\\na=extmap-allow-mixed\\r\\na=msid-semantic: WMS 0ea32288-e8d5-4fc0-afbf-6b35afaee4c8\\r\\nm=audio 9 UDP/TLS/RTP/SAVPF 111 63 9 0 8 13 110 126\\r\\nc=IN IP4 0.0.0.0\\r\\na=rtcp:9 IN IP4 0.0.0.0\\r\\na=ice-ufrag:eGl6\\r\\na=ice-pwd:POcTBpcYHhGjMAVeC2teXKGr\\r\\na=ice-options:trickle\\r\\na=fingerprint:sha-256 34:E0:C8:95:3F:29:3E:03:4A:5D:CC:8D:37:1B:15:F7:74:37:1F:D7:1B:1A:4A:F7:2A:31:F1:ED:42:55:D0:EC\\r\\na=setup:active\\r\\na=mid:0\\r\\na=extmap:1 urn:ietf:params:rtp-hdrext:ssrc-audio-level\\r\\na=extmap:2 http://www.webrtc.org/experiments/rtp-hdrext/abs-send-time\\r\\na=extmap:3 http://www.ietf.org/id/draft-holmer-rmcat-transport-wide-cc-extensions-01\\r\\na=extmap:4 urn:ietf:params:rtp-hdrext:sdes:mid\\r\\na=sendrecv\\r\\na=msid:0ea32288-e8d5-4fc0-afbf-6b35afaee4c8 ced000c9-ade3-4f57-b7f5-262520787649\\r\\na=rtcp-mux\\r\\na=rtcp-rsize\\r\\na=rtcp-xr:rcvr-rtt=all\\r\\na=rtpmap:111 opus/48000/2\\r\\na=rtcp-fb:111 transport-cc\\r\\na=fmtp:111 minptime=10;useinbandfec=1\\r\\na=rtpmap:63 red/48000/2\\r\\na=fmtp:63 111/111\\r\\na=rtpmap:9 G722/8000\\r\\na=rtpmap:0 PCMU/8000\\r\\na=rtpmap:8 PCMA/8000\\r\\na=rtpmap:13 CN/8000\\r\\na=rtpmap:110 telephone-event/48000\\r\\na=rtpmap:126 telephone-event/8000\\r\\na=ssrc:2132957627 cname:aXqDiVXEyDNJcUI6\\r\\nm=video 9 UDP/TLS/RTP/SAVPF 96 97 102 103 104 107 108 109 114 115 116 117 39 40 45 46 98 99 100 101 118 119 49 50 122 123 124\\r\\nc=IN IP4 0.0.0.0\\r\\na=rtcp:9 IN IP4 0.0.0.0\\r\\na=ice-ufrag:eGl6\\r\\na=ice-pwd:POcTBpcYHhGjMAVeC2teXKGr\\r\\na=ice-options:trickle\\r\\na=fingerprint:sha-256 34:E0:C8:95:3F:29:3E:03:4A:5D:CC:8D:37:1B:15:F7:74:37:1F:D7:1B:1A:4A:F7:2A:31:F1:ED:42:55:D0:EC\\r\\na=setup:active\\r\\na=mid:1\\r\\na=extmap:14 urn:ietf:params:rtp-hdrext:toffset\\r\\na=extmap:2 http://www.webrtc.org/experiments/rtp-hdrext/abs-send-time\\r\\na=extmap:13 urn:3gpp:video-orientation\\r\\na=extmap:3 http://www.ietf.org/id/draft-holmer-rmcat-transport-wide-cc-extensions-01\\r\\na=extmap:5 http://www.webrtc.org/experiments/rtp-hdrext/playout-delay\\r\\na=extmap:6 http://www.webrtc.org/experiments/rtp-hdrext/video-content-type\\r\\na=extmap:7 http://www.webrtc.org/experiments/rtp-hdrext/video-timing\\r\\na=extmap:8 http://www.webrtc.org/experiments/rtp-hdrext/color-space\\r\\na=extmap:4 urn:ietf:params:rtp-hdrext:sdes:mid\\r\\na=extmap:10 urn:ietf:params:rtp-hdrext:sdes:rtp-stream-id\\r\\na=extmap:11 urn:ietf:params:rtp-hdrext:sdes:repaired-rtp-stream-id\\r\\na=sendrecv\\r\\na=msid:0ea32288-e8d5-4fc0-afbf-6b35afaee4c8 8a4aec5d-741f-4842-9d63-b55e83e312d4\\r\\na=rtcp-mux\\r\\na=rtcp-rsize\\r\\na=rtcp-xr:rcvr-rtt=all\\r\\na=rtpmap:96 VP8/90000\\r\\na=rtcp-fb:96 goog-remb\\r\\na=rtcp-fb:96 transport-cc\\r\\na=rtcp-fb:96 ccm fir\\r\\na=rtcp-fb:96 nack\\r\\na=rtcp-fb:96 nack pli\\r\\na=rtpmap:97 rtx/90000\\r\\na=fmtp:97 apt=96\\r\\na=rtpmap:102 H264/90000\\r\\na=rtcp-fb:102 goog-remb\\r\\na=rtcp-fb:102 transport-cc\\r\\na=rtcp-fb:102 ccm fir\\r\\na=rtcp-fb:102 nack\\r\\na=rtcp-fb:102 nack pli\\r\\na=fmtp:102 level-asymmetry-allowed=1;packetization-mode=1;profile-level-id=42001f\\r\\na=rtpmap:103 rtx/90000\\r\\na=fmtp:103 apt=102\\r\\na=rtpmap:104 H264/90000\\r\\na=rtcp-fb:104 goog-remb\\r\\na=rtcp-fb:104 transport-cc\\r\\na=rtcp-fb:104 ccm fir\\r\\na=rtcp-fb:104 nack\\r\\na=rtcp-fb:104 nack pli\\r\\na=fmtp:104 level-asymmetry-allowed=1;packetization-mode=0;profile-level-id=42001f\\r\\na=rtpmap:107 rtx/90000\\r\\na=fmtp:107 apt=104\\r\\na=rtpmap:108 H264/90000\\r\\na=rtcp-fb:108 goog-remb\\r\\na=rtcp-fb:108 transport-cc\\r\\na=rtcp-fb:108 ccm fir\\r\\na=rtcp-fb:108 nack\\r\\na=rtcp-fb:108 nack pli\\r\\na=fmtp:108 level-asymmetry-allowed=1;packetization-mode=1;profile-level-id=42e01f\\r\\na=rtpmap:109 rtx/90000\\r\\na=fmtp:109 apt=108\\r\\na=rtpmap:114 H264/90000\\r\\na=rtcp-fb:114 goog-remb\\r\\na=rtcp-fb:114 transport-cc\\r\\na=rtcp-fb:114 ccm fir\\r\\na=rtcp-fb:114 nack\\r\\na=rtcp-fb:114 nack pli\\r\\na=fmtp:114 level-asymmetry-allowed=1;packetization-mode=0;profile-level-id=42e01f\\r\\na=rtpmap:115 rtx/90000\\r\\na=fmtp:115 apt=114\\r\\na=rtpmap:116 H264/90000\\r\\na=rtcp-fb:116 goog-remb\\r\\na=rtcp-fb:116 transport-cc\\r\\na=rtcp-fb:116 ccm fir\\r\\na=rtcp-fb:116 nack\\r\\na=rtcp-fb:116 nack pli\\r\\na=fmtp:116 level-asymmetry-allowed=1;packetization-mode=1;profile-level-id=4d001f\\r\\na=rtpmap:117 rtx/90000\\r\\na=fmtp:117 apt=116\\r\\na=rtpmap:39 H264/90000\\r\\na=rtcp-fb:39 goog-remb\\r\\na=rtcp-fb:39 transport-cc\\r\\na=rtcp-fb:39 ccm fir\\r\\na=rtcp-fb:39 nack\\r\\na=rtcp-fb:39 nack pli\\r\\na=fmtp:39 level-asymmetry-allowed=1;packetization-mode=0;profile-level-id=4d001f\\r\\na=rtpmap:40 rtx/90000\\r\\na=fmtp:40 apt=39\\r\\na=rtpmap:45 AV1/90000\\r\\na=rtcp-fb:45 goog-remb\\r\\na=rtcp-fb:45 transport-cc\\r\\na=rtcp-fb:45 ccm fir\\r\\na=rtcp-fb:45 nack\\r\\na=rtcp-fb:45 nack pli\\r\\na=fmtp:45 level-idx=5;profile=0;tier=0\\r\\na=rtpmap:46 rtx/90000\\r\\na=fmtp:46 apt=45\\r\\na=rtpmap:98 VP9/90000\\r\\na=rtcp-fb:98 goog-remb\\r\\na=rtcp-fb:98 transport-cc\\r\\na=rtcp-fb:98 ccm fir\\r\\na=rtcp-fb:98 nack\\r\\na=rtcp-fb:98 nack pli\\r\\na=fmtp:98 profile-id=0\\r\\na=rtpmap:99 rtx/90000\\r\\na=fmtp:99 apt=98\\r\\na=rtpmap:100 VP9/90000\\r\\na=rtcp-fb:100 goog-remb\\r\\na=rtcp-fb:100 transport-cc\\r\\na=rtcp-fb:100 ccm fir\\r\\na=rtcp-fb:100 nack\\r\\na=rtcp-fb:100 nack pli\\r\\na=fmtp:100 profile-id=2\\r\\na=rtpmap:101 rtx/90000\\r\\na=fmtp:101 apt=100\\r\\na=rtpmap:118 H264/90000\\r\\na=rtcp-fb:118 goog-remb\\r\\na=rtcp-fb:118 transport-cc\\r\\na=rtcp-fb:118 ccm fir\\r\\na=rtcp-fb:118 nack\\r\\na=rtcp-fb:118 nack pli\\r\\na=fmtp:118 level-asymmetry-allowed=1;packetization-mode=1;profile-level-id=64001f\\r\\na=rtpmap:119 rtx/90000\\r\\na=fmtp:119 apt=118\\r\\na=rtpmap:49 H265/90000\\r\\na=rtcp-fb:49 goog-remb\\r\\na=rtcp-fb:49 transport-cc\\r\\na=rtcp-fb:49 ccm fir\\r\\na=rtcp-fb:49 nack\\r\\na=rtcp-fb:49 nack pli\\r\\na=fmtp:49 level-id=93;profile-id=1;tier-flag=0;tx-mode=SRST\\r\\na=rtpmap:50 rtx/90000\\r\\na=fmtp:50 apt=49\\r\\na=rtpmap:122 red/90000\\r\\na=rtpmap:123 rtx/90000\\r\\na=fmtp:123 apt=122\\r\\na=rtpmap:124 ulpfec/90000\\r\\na=ssrc-group:FID 3997873094 2983856872\\r\\na=ssrc:3997873094 cname:aXqDiVXEyDNJcUI6\\r\\na=ssrc:2983856872 cname:aXqDiVXEyDNJcUI6\\r\\n\"}}', '2026-10-09 02:30:53'),
(25, 32, 5, 3, 'ice', '{\"candidate\":{\"candidate\":\"candidate:2484598342 1 udp 2122260223 172.20.10.4 58670 typ host generation 0 ufrag eGl6 network-id 1 network-cost 10\",\"sdpMid\":\"0\",\"sdpMLineIndex\":0,\"usernameFragment\":\"eGl6\"}}', '2026-10-09 02:30:53'),
(26, 32, 5, 3, 'ice', '{\"candidate\":{\"candidate\":\"candidate:1790780114 1 tcp 1518280447 172.20.10.4 9 typ host tcptype active generation 0 ufrag eGl6 network-id 1 network-cost 10\",\"sdpMid\":\"0\",\"sdpMLineIndex\":0,\"usernameFragment\":\"eGl6\"}}', '2026-10-09 02:30:53'),
(27, 32, 5, 3, 'ice', '{\"candidate\":{\"candidate\":\"candidate:3572335855 1 udp 1686052607 192.145.175.133 49805 typ srflx raddr 172.20.10.4 rport 58670 generation 0 ufrag eGl6 network-id 1 network-cost 10\",\"sdpMid\":\"0\",\"sdpMLineIndex\":0,\"usernameFragment\":\"eGl6\"}}', '2026-10-09 02:30:53'),
(28, 33, 6, 4, 'offer', '{\"call_type\":\"voice\",\"caller_name\":\"Maxamed\",\"caller_image\":\"assets/images/default-avatar.png\",\"sdp\":{\"type\":\"offer\",\"sdp\":\"v=0\\r\\no=- 8568321462292668670 2 IN IP4 127.0.0.1\\r\\ns=-\\r\\nt=0 0\\r\\na=group:BUNDLE 0\\r\\na=extmap-allow-mixed\\r\\na=msid-semantic: WMS 1c28f4cb-bb3c-4f25-a54b-46a3f28802fb\\r\\nm=audio 9 UDP/TLS/RTP/SAVPF 111 63 9 0 8 13 110 126\\r\\nc=IN IP4 0.0.0.0\\r\\na=rtcp:9 IN IP4 0.0.0.0\\r\\na=ice-ufrag:Bjhq\\r\\na=ice-pwd:zlBu0IBvLPfqzMYpiQhhXtBh\\r\\na=ice-options:trickle\\r\\na=fingerprint:sha-256 5A:5E:9A:66:C1:C7:DD:E0:1D:BA:1B:A8:15:5C:2F:D3:48:4F:8E:DD:21:28:21:A2:DC:56:3E:5E:D8:03:97:1E\\r\\na=setup:actpass\\r\\na=mid:0\\r\\na=extmap:1 urn:ietf:params:rtp-hdrext:ssrc-audio-level\\r\\na=extmap:2 http://www.webrtc.org/experiments/rtp-hdrext/abs-send-time\\r\\na=extmap:3 http://www.ietf.org/id/draft-holmer-rmcat-transport-wide-cc-extensions-01\\r\\na=extmap:4 urn:ietf:params:rtp-hdrext:sdes:mid\\r\\na=sendrecv\\r\\na=msid:1c28f4cb-bb3c-4f25-a54b-46a3f28802fb a6c5f5cf-0629-4042-b93d-d986ec477f2e\\r\\na=rtcp-mux\\r\\na=rtcp-rsize\\r\\na=rtcp-xr:rcvr-rtt=all\\r\\na=rtpmap:111 opus/48000/2\\r\\na=rtcp-fb:111 transport-cc\\r\\na=fmtp:111 minptime=10;useinbandfec=1\\r\\na=rtpmap:63 red/48000/2\\r\\na=fmtp:63 111/111\\r\\na=rtpmap:9 G722/8000\\r\\na=rtpmap:0 PCMU/8000\\r\\na=rtpmap:8 PCMA/8000\\r\\na=rtpmap:13 CN/8000\\r\\na=rtpmap:110 telephone-event/48000\\r\\na=rtpmap:126 telephone-event/8000\\r\\na=ssrc:3688956813 cname:CTCDKYrKXtizPji4\\r\\na=ssrc:3688956813 msid:1c28f4cb-bb3c-4f25-a54b-46a3f28802fb a6c5f5cf-0629-4042-b93d-d986ec477f2e\\r\\n\"}}', '2026-10-09 02:57:06'),
(29, 33, 6, 4, 'ice', '{\"candidate\":{\"candidate\":\"candidate:118578190 1 udp 2122260223 172.20.10.4 53889 typ host generation 0 ufrag Bjhq network-id 1 network-cost 10\",\"sdpMid\":\"0\",\"sdpMLineIndex\":0,\"usernameFragment\":\"Bjhq\"}}', '2026-10-09 02:57:06'),
(30, 33, 6, 4, 'ice', '{\"candidate\":{\"candidate\":\"candidate:4189816986 1 tcp 1518280447 172.20.10.4 9 typ host tcptype active generation 0 ufrag Bjhq network-id 1 network-cost 10\",\"sdpMid\":\"0\",\"sdpMLineIndex\":0,\"usernameFragment\":\"Bjhq\"}}', '2026-10-09 02:57:06'),
(31, 33, 6, 4, 'ice', '{\"candidate\":{\"candidate\":\"candidate:1206595239 1 udp 1686052607 192.145.175.133 49807 typ srflx raddr 172.20.10.4 rport 53889 generation 0 ufrag Bjhq network-id 1 network-cost 10\",\"sdpMid\":\"0\",\"sdpMLineIndex\":0,\"usernameFragment\":\"Bjhq\"}}', '2026-10-09 02:57:06'),
(32, 33, 4, 6, 'answer', '{\"sdp\":{\"type\":\"answer\",\"sdp\":\"v=0\\r\\no=- 2237416561798297877 2 IN IP4 127.0.0.1\\r\\ns=-\\r\\nt=0 0\\r\\na=group:BUNDLE 0\\r\\na=extmap-allow-mixed\\r\\na=msid-semantic: WMS c3714665-c90a-4abd-bfa2-d993abbc3078\\r\\nm=audio 9 UDP/TLS/RTP/SAVPF 111 63 9 0 8 13 110 126\\r\\nc=IN IP4 0.0.0.0\\r\\na=rtcp:9 IN IP4 0.0.0.0\\r\\na=ice-ufrag:QA0q\\r\\na=ice-pwd:s1TNLInh3QpKddI4FNjVp1Wx\\r\\na=ice-options:trickle\\r\\na=fingerprint:sha-256 D3:34:DF:ED:B1:7B:3C:F5:7D:58:7E:4D:6C:EA:60:27:5A:2D:55:CF:CC:B2:E2:7F:62:F4:26:16:AF:B6:E5:90\\r\\na=setup:active\\r\\na=mid:0\\r\\na=extmap:1 urn:ietf:params:rtp-hdrext:ssrc-audio-level\\r\\na=extmap:2 http://www.webrtc.org/experiments/rtp-hdrext/abs-send-time\\r\\na=extmap:3 http://www.ietf.org/id/draft-holmer-rmcat-transport-wide-cc-extensions-01\\r\\na=extmap:4 urn:ietf:params:rtp-hdrext:sdes:mid\\r\\na=sendrecv\\r\\na=msid:c3714665-c90a-4abd-bfa2-d993abbc3078 2f1c49a4-95e8-4a3a-b9d5-4a644d60af38\\r\\na=rtcp-mux\\r\\na=rtcp-rsize\\r\\na=rtcp-xr:rcvr-rtt=all\\r\\na=rtpmap:111 opus/48000/2\\r\\na=rtcp-fb:111 transport-cc\\r\\na=fmtp:111 minptime=10;useinbandfec=1\\r\\na=rtpmap:63 red/48000/2\\r\\na=fmtp:63 111/111\\r\\na=rtpmap:9 G722/8000\\r\\na=rtpmap:0 PCMU/8000\\r\\na=rtpmap:8 PCMA/8000\\r\\na=rtpmap:13 CN/8000\\r\\na=rtpmap:110 telephone-event/48000\\r\\na=rtpmap:126 telephone-event/8000\\r\\na=ssrc:1382447764 cname:PZ3NLcakdOiKMIVN\\r\\n\"}}', '2026-10-09 02:57:12'),
(33, 33, 4, 6, 'ice', '{\"candidate\":{\"candidate\":\"candidate:3137887941 1 udp 2122260223 172.20.10.4 63637 typ host generation 0 ufrag QA0q network-id 1 network-cost 10\",\"sdpMid\":\"0\",\"sdpMLineIndex\":0,\"usernameFragment\":\"QA0q\"}}', '2026-10-09 02:57:12'),
(34, 33, 4, 6, 'ice', '{\"candidate\":{\"candidate\":\"candidate:3318201437 1 tcp 1518280447 172.20.10.4 9 typ host tcptype active generation 0 ufrag QA0q network-id 1 network-cost 10\",\"sdpMid\":\"0\",\"sdpMLineIndex\":0,\"usernameFragment\":\"QA0q\"}}', '2026-10-09 02:57:12'),
(35, 33, 4, 6, 'ice', '{\"candidate\":{\"candidate\":\"candidate:2658242863 1 udp 1686052607 192.145.175.133 49808 typ srflx raddr 172.20.10.4 rport 63637 generation 0 ufrag QA0q network-id 1 network-cost 10\",\"sdpMid\":\"0\",\"sdpMLineIndex\":0,\"usernameFragment\":\"QA0q\"}}', '2026-10-09 02:57:12'),
(36, 34, 4, 6, 'offer', '{\"call_type\":\"voice\",\"caller_name\":\"Ali Ahmed\",\"caller_image\":\"uploads/images/avatar_6ac7a2c035eb64.58598088.png\",\"sdp\":{\"type\":\"offer\",\"sdp\":\"v=0\\r\\no=- 1213492416277674927 2 IN IP4 127.0.0.1\\r\\ns=-\\r\\nt=0 0\\r\\na=group:BUNDLE 0\\r\\na=extmap-allow-mixed\\r\\na=msid-semantic: WMS 289f5e4e-d7fe-430b-b1a2-61ceb73f03b6\\r\\nm=audio 9 UDP/TLS/RTP/SAVPF 111 63 9 0 8 13 110 126\\r\\nc=IN IP4 0.0.0.0\\r\\na=rtcp:9 IN IP4 0.0.0.0\\r\\na=ice-ufrag:fMnX\\r\\na=ice-pwd:ptMiBjC65kuSAOtVRtwE1f38\\r\\na=ice-options:trickle\\r\\na=fingerprint:sha-256 48:3B:D2:54:AA:AF:F4:FD:09:5B:36:08:8D:59:FA:F2:53:53:47:80:8C:26:20:2E:26:32:52:4A:4D:64:EE:BB\\r\\na=setup:actpass\\r\\na=mid:0\\r\\na=extmap:1 urn:ietf:params:rtp-hdrext:ssrc-audio-level\\r\\na=extmap:2 http://www.webrtc.org/experiments/rtp-hdrext/abs-send-time\\r\\na=extmap:3 http://www.ietf.org/id/draft-holmer-rmcat-transport-wide-cc-extensions-01\\r\\na=extmap:4 urn:ietf:params:rtp-hdrext:sdes:mid\\r\\na=sendrecv\\r\\na=msid:289f5e4e-d7fe-430b-b1a2-61ceb73f03b6 4afa6219-f993-4f9a-8fed-152983d0e17c\\r\\na=rtcp-mux\\r\\na=rtcp-rsize\\r\\na=rtcp-xr:rcvr-rtt=all\\r\\na=rtpmap:111 opus/48000/2\\r\\na=rtcp-fb:111 transport-cc\\r\\na=fmtp:111 minptime=10;useinbandfec=1\\r\\na=rtpmap:63 red/48000/2\\r\\na=fmtp:63 111/111\\r\\na=rtpmap:9 G722/8000\\r\\na=rtpmap:0 PCMU/8000\\r\\na=rtpmap:8 PCMA/8000\\r\\na=rtpmap:13 CN/8000\\r\\na=rtpmap:110 telephone-event/48000\\r\\na=rtpmap:126 telephone-event/8000\\r\\na=ssrc:3438749695 cname:2+U+DQzH0dq7Whs1\\r\\na=ssrc:3438749695 msid:289f5e4e-d7fe-430b-b1a2-61ceb73f03b6 4afa6219-f993-4f9a-8fed-152983d0e17c\\r\\n\"}}', '2026-10-09 02:57:37'),
(37, 34, 4, 6, 'ice', '{\"candidate\":{\"candidate\":\"candidate:4192321359 1 tcp 1518280447 172.20.10.4 9 typ host tcptype active generation 0 ufrag fMnX network-id 1 network-cost 10\",\"sdpMid\":\"0\",\"sdpMLineIndex\":0,\"usernameFragment\":\"fMnX\"}}', '2026-10-09 02:57:37'),
(38, 34, 4, 6, 'ice', '{\"candidate\":{\"candidate\":\"candidate:2267962839 1 udp 2122260223 172.20.10.4 52425 typ host generation 0 ufrag fMnX network-id 1 network-cost 10\",\"sdpMid\":\"0\",\"sdpMLineIndex\":0,\"usernameFragment\":\"fMnX\"}}', '2026-10-09 02:57:37'),
(39, 34, 4, 6, 'ice', '{\"candidate\":{\"candidate\":\"candidate:2723648061 1 udp 1686052607 192.145.175.133 49809 typ srflx raddr 172.20.10.4 rport 52425 generation 0 ufrag fMnX network-id 1 network-cost 10\",\"sdpMid\":\"0\",\"sdpMLineIndex\":0,\"usernameFragment\":\"fMnX\"}}', '2026-10-09 02:57:37'),
(40, 35, 6, 4, 'offer', '{\"call_type\":\"voice\",\"caller_name\":\"Maxamed\",\"caller_image\":\"assets/images/default-avatar.png\",\"sdp\":{\"type\":\"offer\",\"sdp\":\"v=0\\r\\no=- 3247719612033202227 2 IN IP4 127.0.0.1\\r\\ns=-\\r\\nt=0 0\\r\\na=group:BUNDLE 0\\r\\na=extmap-allow-mixed\\r\\na=msid-semantic: WMS 0d5a3e0c-848d-45a4-b4dd-ea400a6706f1\\r\\nm=audio 9 UDP/TLS/RTP/SAVPF 111 63 9 0 8 13 110 126\\r\\nc=IN IP4 0.0.0.0\\r\\na=rtcp:9 IN IP4 0.0.0.0\\r\\na=ice-ufrag:ezxE\\r\\na=ice-pwd:kD2ZUIpugalGyxdOY1GOymYk\\r\\na=ice-options:trickle\\r\\na=fingerprint:sha-256 E9:30:E0:18:F8:C6:6C:CF:D3:F1:2B:B1:D7:2E:3C:F9:31:FB:B8:43:36:A4:20:AE:08:CF:1C:FB:AA:1D:F8:DC\\r\\na=setup:actpass\\r\\na=mid:0\\r\\na=extmap:1 urn:ietf:params:rtp-hdrext:ssrc-audio-level\\r\\na=extmap:2 http://www.webrtc.org/experiments/rtp-hdrext/abs-send-time\\r\\na=extmap:3 http://www.ietf.org/id/draft-holmer-rmcat-transport-wide-cc-extensions-01\\r\\na=extmap:4 urn:ietf:params:rtp-hdrext:sdes:mid\\r\\na=sendrecv\\r\\na=msid:0d5a3e0c-848d-45a4-b4dd-ea400a6706f1 7eb5569f-4533-4f17-adec-004e609c5045\\r\\na=rtcp-mux\\r\\na=rtcp-rsize\\r\\na=rtcp-xr:rcvr-rtt=all\\r\\na=rtpmap:111 opus/48000/2\\r\\na=rtcp-fb:111 transport-cc\\r\\na=fmtp:111 minptime=10;useinbandfec=1\\r\\na=rtpmap:63 red/48000/2\\r\\na=fmtp:63 111/111\\r\\na=rtpmap:9 G722/8000\\r\\na=rtpmap:0 PCMU/8000\\r\\na=rtpmap:8 PCMA/8000\\r\\na=rtpmap:13 CN/8000\\r\\na=rtpmap:110 telephone-event/48000\\r\\na=rtpmap:126 telephone-event/8000\\r\\na=ssrc:1388917416 cname:0Kp6h6EJEivpsKp7\\r\\na=ssrc:1388917416 msid:0d5a3e0c-848d-45a4-b4dd-ea400a6706f1 7eb5569f-4533-4f17-adec-004e609c5045\\r\\n\"}}', '2026-10-09 02:57:46'),
(41, 35, 6, 4, 'ice', '{\"candidate\":{\"candidate\":\"candidate:1617608492 1 udp 2122260223 172.20.10.4 54456 typ host generation 0 ufrag ezxE network-id 1 network-cost 10\",\"sdpMid\":\"0\",\"sdpMLineIndex\":0,\"usernameFragment\":\"ezxE\"}}', '2026-10-09 02:57:46'),
(42, 35, 6, 4, 'ice', '{\"candidate\":{\"candidate\":\"candidate:514153908 1 tcp 1518280447 172.20.10.4 9 typ host tcptype active generation 0 ufrag ezxE network-id 1 network-cost 10\",\"sdpMid\":\"0\",\"sdpMLineIndex\":0,\"usernameFragment\":\"ezxE\"}}', '2026-10-09 02:57:46'),
(43, 35, 6, 4, 'ice', '{\"candidate\":{\"candidate\":\"candidate:1158901958 1 udp 1686052607 192.145.175.133 49810 typ srflx raddr 172.20.10.4 rport 54456 generation 0 ufrag ezxE network-id 1 network-cost 10\",\"sdpMid\":\"0\",\"sdpMLineIndex\":0,\"usernameFragment\":\"ezxE\"}}', '2026-10-09 02:57:46'),
(44, 35, 4, 6, 'ice', '{\"candidate\":{\"candidate\":\"candidate:2735247293 1 udp 2122260223 172.20.10.4 54301 typ host generation 0 ufrag LJkT network-id 1 network-cost 10\",\"sdpMid\":\"0\",\"sdpMLineIndex\":0,\"usernameFragment\":\"LJkT\"}}', '2026-10-09 02:57:53'),
(45, 35, 4, 6, 'answer', '{\"sdp\":{\"type\":\"answer\",\"sdp\":\"v=0\\r\\no=- 7609226132531329337 2 IN IP4 127.0.0.1\\r\\ns=-\\r\\nt=0 0\\r\\na=group:BUNDLE 0\\r\\na=extmap-allow-mixed\\r\\na=msid-semantic: WMS a1fd7a92-2771-479e-9b29-2812ee8169f7\\r\\nm=audio 9 UDP/TLS/RTP/SAVPF 111 63 9 0 8 13 110 126\\r\\nc=IN IP4 0.0.0.0\\r\\na=rtcp:9 IN IP4 0.0.0.0\\r\\na=ice-ufrag:LJkT\\r\\na=ice-pwd:6thYpdVdq5ne2pUwKDqwQgSf\\r\\na=ice-options:trickle\\r\\na=fingerprint:sha-256 8D:81:7A:2C:57:38:8D:A0:DA:C0:15:A5:A9:B3:6D:B3:5A:4C:3B:69:DF:10:10:D8:0A:3A:73:83:86:D2:49:CE\\r\\na=setup:active\\r\\na=mid:0\\r\\na=extmap:1 urn:ietf:params:rtp-hdrext:ssrc-audio-level\\r\\na=extmap:2 http://www.webrtc.org/experiments/rtp-hdrext/abs-send-time\\r\\na=extmap:3 http://www.ietf.org/id/draft-holmer-rmcat-transport-wide-cc-extensions-01\\r\\na=extmap:4 urn:ietf:params:rtp-hdrext:sdes:mid\\r\\na=sendrecv\\r\\na=msid:a1fd7a92-2771-479e-9b29-2812ee8169f7 9a95142a-a81a-45e9-921b-ee251f0005d0\\r\\na=rtcp-mux\\r\\na=rtcp-rsize\\r\\na=rtcp-xr:rcvr-rtt=all\\r\\na=rtpmap:111 opus/48000/2\\r\\na=rtcp-fb:111 transport-cc\\r\\na=fmtp:111 minptime=10;useinbandfec=1\\r\\na=rtpmap:63 red/48000/2\\r\\na=fmtp:63 111/111\\r\\na=rtpmap:9 G722/8000\\r\\na=rtpmap:0 PCMU/8000\\r\\na=rtpmap:8 PCMA/8000\\r\\na=rtpmap:13 CN/8000\\r\\na=rtpmap:110 telephone-event/48000\\r\\na=rtpmap:126 telephone-event/8000\\r\\na=ssrc:2988985802 cname:DWd4tZunpbsCNlPL\\r\\n\"}}', '2026-10-09 02:57:53'),
(46, 35, 4, 6, 'ice', '{\"candidate\":{\"candidate\":\"candidate:3720834341 1 tcp 1518280447 172.20.10.4 9 typ host tcptype active generation 0 ufrag LJkT network-id 1 network-cost 10\",\"sdpMid\":\"0\",\"sdpMLineIndex\":0,\"usernameFragment\":\"LJkT\"}}', '2026-10-09 02:57:53'),
(47, 35, 4, 6, 'ice', '{\"candidate\":{\"candidate\":\"candidate:2255568983 1 udp 1686052607 192.145.175.133 49811 typ srflx raddr 172.20.10.4 rport 54301 generation 0 ufrag LJkT network-id 1 network-cost 10\",\"sdpMid\":\"0\",\"sdpMLineIndex\":0,\"usernameFragment\":\"LJkT\"}}', '2026-10-09 02:57:53'),
(48, 36, 6, 4, 'offer', '{\"call_type\":\"voice\",\"caller_name\":\"Maxamed\",\"caller_image\":\"assets/images/default-avatar.png\",\"sdp\":{\"type\":\"offer\",\"sdp\":\"v=0\\r\\no=- 8148998660393627714 2 IN IP4 127.0.0.1\\r\\ns=-\\r\\nt=0 0\\r\\na=group:BUNDLE 0\\r\\na=extmap-allow-mixed\\r\\na=msid-semantic: WMS 75b6a8a6-1508-4db0-86e1-3135b6b81988\\r\\nm=audio 9 UDP/TLS/RTP/SAVPF 111 63 9 0 8 13 110 126\\r\\nc=IN IP4 0.0.0.0\\r\\na=rtcp:9 IN IP4 0.0.0.0\\r\\na=ice-ufrag:uHAd\\r\\na=ice-pwd:E4JlH3SPDPsSJJV0c0rg1F+0\\r\\na=ice-options:trickle\\r\\na=fingerprint:sha-256 1E:60:23:53:C7:D9:49:B2:76:2C:B5:3A:53:54:45:FA:01:CC:56:C2:5C:B0:22:17:CB:21:3A:89:19:8B:5C:FE\\r\\na=setup:actpass\\r\\na=mid:0\\r\\na=extmap:1 urn:ietf:params:rtp-hdrext:ssrc-audio-level\\r\\na=extmap:2 http://www.webrtc.org/experiments/rtp-hdrext/abs-send-time\\r\\na=extmap:3 http://www.ietf.org/id/draft-holmer-rmcat-transport-wide-cc-extensions-01\\r\\na=extmap:4 urn:ietf:params:rtp-hdrext:sdes:mid\\r\\na=sendrecv\\r\\na=msid:75b6a8a6-1508-4db0-86e1-3135b6b81988 942a9cc2-a83e-42fa-8901-692aca0419e4\\r\\na=rtcp-mux\\r\\na=rtcp-rsize\\r\\na=rtcp-xr:rcvr-rtt=all\\r\\na=rtpmap:111 opus/48000/2\\r\\na=rtcp-fb:111 transport-cc\\r\\na=fmtp:111 minptime=10;useinbandfec=1\\r\\na=rtpmap:63 red/48000/2\\r\\na=fmtp:63 111/111\\r\\na=rtpmap:9 G722/8000\\r\\na=rtpmap:0 PCMU/8000\\r\\na=rtpmap:8 PCMA/8000\\r\\na=rtpmap:13 CN/8000\\r\\na=rtpmap:110 telephone-event/48000\\r\\na=rtpmap:126 telephone-event/8000\\r\\na=ssrc:2477319570 cname:PriOn/aKUxwiE4tA\\r\\na=ssrc:2477319570 msid:75b6a8a6-1508-4db0-86e1-3135b6b81988 942a9cc2-a83e-42fa-8901-692aca0419e4\\r\\n\"}}', '2026-10-09 03:16:25'),
(49, 36, 6, 4, 'ice', '{\"candidate\":{\"candidate\":\"candidate:3381998110 1 tcp 1518280447 172.20.10.4 9 typ host tcptype active generation 0 ufrag uHAd network-id 1 network-cost 10\",\"sdpMid\":\"0\",\"sdpMLineIndex\":0,\"usernameFragment\":\"uHAd\"}}', '2026-10-09 03:16:25'),
(50, 36, 6, 4, 'ice', '{\"candidate\":{\"candidate\":\"candidate:2009437219 1 udp 1686052607 192.145.175.133 49813 typ srflx raddr 172.20.10.4 rport 64519 generation 0 ufrag uHAd network-id 1 network-cost 10\",\"sdpMid\":\"0\",\"sdpMLineIndex\":0,\"usernameFragment\":\"uHAd\"}}', '2026-10-09 03:16:25'),
(51, 36, 6, 4, 'ice', '{\"candidate\":{\"candidate\":\"candidate:926934666 1 udp 2122260223 172.20.10.4 64519 typ host generation 0 ufrag uHAd network-id 1 network-cost 10\",\"sdpMid\":\"0\",\"sdpMLineIndex\":0,\"usernameFragment\":\"uHAd\"}}', '2026-10-09 03:16:25');

-- --------------------------------------------------------

--
-- Table structure for table `friendships`
--

CREATE TABLE `friendships` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `friend_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `friendships`
--

INSERT INTO `friendships` (`id`, `user_id`, `friend_id`, `created_at`) VALUES
(1, 2, 1, '2026-10-08 13:22:14'),
(2, 1, 2, '2026-10-08 13:22:14'),
(3, 3, 4, '2026-10-08 13:37:51'),
(4, 4, 3, '2026-10-08 13:37:51'),
(5, 5, 3, '2026-10-08 14:48:47'),
(6, 3, 5, '2026-10-08 14:48:47'),
(7, 4, 6, '2026-10-09 02:56:27'),
(8, 6, 4, '2026-10-09 02:56:27');

-- --------------------------------------------------------

--
-- Table structure for table `friend_requests`
--

CREATE TABLE `friend_requests` (
  `id` int(11) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `receiver_id` int(11) NOT NULL,
  `status` enum('pending','accepted','rejected') DEFAULT 'pending',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `friend_requests`
--

INSERT INTO `friend_requests` (`id`, `sender_id`, `receiver_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 'accepted', '2026-10-08 13:22:14', '2026-10-08 13:22:14'),
(2, 3, 4, 'accepted', '2026-10-08 13:37:42', '2026-10-08 13:37:51'),
(3, 5, 4, 'pending', '2026-10-08 14:48:26', '2026-10-08 14:48:26'),
(4, 5, 3, 'accepted', '2026-10-08 14:48:37', '2026-10-08 14:48:47'),
(5, 4, 6, 'accepted', '2026-10-09 02:56:14', '2026-10-09 02:56:27');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `receiver_id` int(11) NOT NULL,
  `message` text DEFAULT NULL,
  `message_type` enum('text','image','video','document','voice') DEFAULT 'text',
  `file_path` varchar(255) DEFAULT NULL,
  `file_name` varchar(255) DEFAULT NULL,
  `file_size` varchar(50) DEFAULT NULL,
  `reply_to_id` int(11) DEFAULT NULL,
  `is_delivered` tinyint(1) DEFAULT 0,
  `is_read` tinyint(1) DEFAULT 0,
  `deleted_for_sender` tinyint(1) DEFAULT 0,
  `deleted_for_all` tinyint(1) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `sender_id`, `receiver_id`, `message`, `message_type`, `file_path`, `file_name`, `file_size`, `reply_to_id`, `is_delivered`, `is_read`, `deleted_for_sender`, `deleted_for_all`, `created_at`) VALUES
(1, 2, 1, 'Hello Anas! 👋 Testing real-time A/N Chat.', 'text', NULL, NULL, NULL, NULL, 1, 1, 0, 0, '2026-10-08 13:22:14'),
(2, 1, 2, 'Hey Ahmed! Real-time chat is working smoothly! 💗', 'text', NULL, NULL, NULL, NULL, 1, 0, 0, 0, '2026-10-08 13:22:14'),
(3, 4, 3, 'hi', 'text', NULL, NULL, NULL, NULL, 1, 1, 0, 0, '2026-10-08 13:37:56'),
(4, 3, 4, '', 'voice', 'uploads/videos/an_bf8f1baeff5806042795_1791466698.webm', 'voice_1791466698406.webm', '110.7 KB', NULL, 1, 1, 0, 0, '2026-10-08 13:38:18'),
(5, 4, 3, '❤️', 'text', NULL, NULL, NULL, NULL, 1, 1, 0, 0, '2026-10-08 13:39:43'),
(6, 3, 4, 'This message was deleted', 'text', NULL, NULL, NULL, NULL, 1, 1, 0, 1, '2026-10-08 13:52:36'),
(7, 4, 3, 'Wcs', 'text', NULL, NULL, NULL, NULL, 1, 1, 0, 0, '2026-10-08 13:52:52'),
(8, 3, 5, '⚠️ Anas Abdiwahid took a screenshot of this conversation.', '', NULL, NULL, NULL, NULL, 1, 1, 0, 0, '2026-10-08 14:48:56'),
(9, 5, 3, '⚠️ A/N Admin took a screenshot of this conversation.', '', NULL, NULL, NULL, NULL, 1, 1, 0, 0, '2026-10-08 14:49:16'),
(10, 3, 5, '⚠️ Anas Abdiwahid took a screenshot of this conversation.', '', NULL, NULL, NULL, NULL, 1, 1, 0, 0, '2026-10-08 14:50:42'),
(11, 5, 3, 'anas', 'text', NULL, NULL, NULL, NULL, 1, 1, 0, 0, '2026-10-08 15:16:26'),
(12, 5, 3, 'hhhhh', 'text', NULL, NULL, NULL, NULL, 1, 1, 0, 0, '2026-10-09 00:37:24'),
(13, 3, 5, 'hh', 'text', NULL, NULL, NULL, NULL, 1, 1, 0, 0, '2026-10-09 00:58:43'),
(15, 5, 3, 'hhh', 'text', NULL, NULL, NULL, NULL, 1, 1, 0, 0, '2026-10-09 01:09:23'),
(16, 3, 5, 'hhh', 'text', NULL, NULL, NULL, NULL, 1, 1, 0, 0, '2026-10-09 01:09:40'),
(17, 5, 3, 'wraaa', 'text', NULL, NULL, NULL, NULL, 1, 1, 0, 0, '2026-10-09 01:09:48'),
(18, 3, 5, 'wraa', 'text', NULL, NULL, NULL, NULL, 1, 1, 0, 0, '2026-10-09 01:10:18'),
(19, 5, 3, 'wraa', 'text', NULL, NULL, NULL, NULL, 1, 1, 0, 0, '2026-10-09 01:10:31'),
(20, 3, 5, 'hayye', 'text', NULL, NULL, NULL, NULL, 1, 1, 0, 0, '2026-10-09 01:10:42'),
(21, 5, 3, 'hyye', 'text', NULL, NULL, NULL, NULL, 1, 1, 0, 0, '2026-10-09 01:23:08'),
(22, 3, 5, 'haa', 'text', NULL, NULL, NULL, NULL, 1, 1, 0, 0, '2026-10-09 01:23:18'),
(23, 3, 5, 'anas', 'text', NULL, NULL, NULL, NULL, 1, 1, 0, 0, '2026-10-09 01:26:02'),
(24, 5, 3, 'anas', 'text', NULL, NULL, NULL, NULL, 1, 1, 0, 0, '2026-10-09 01:26:11'),
(25, 3, 5, 'anas', 'text', NULL, NULL, NULL, NULL, 1, 1, 0, 0, '2026-10-09 01:26:24'),
(26, 5, 3, 'ali', 'text', NULL, NULL, NULL, NULL, 1, 1, 0, 0, '2026-10-09 01:26:31'),
(27, 3, 5, 'ali', 'text', NULL, NULL, NULL, NULL, 1, 1, 0, 0, '2026-10-09 01:26:39'),
(28, 3, 4, 'ali', 'text', NULL, NULL, NULL, NULL, 1, 1, 0, 0, '2026-10-09 01:26:55'),
(29, 4, 3, '', 'voice', 'uploads/videos/an_9ae6848a29dd7435d1d2_1791509490.webm', 'voice_1791509490177.webm', '114.4 KB', NULL, 1, 1, 0, 0, '2026-10-09 01:31:30'),
(30, 3, 4, 'alx', 'text', NULL, NULL, NULL, NULL, 1, 1, 0, 0, '2026-10-09 01:31:45'),
(31, 3, 4, 'wali qalad ayaa jiro', 'text', NULL, NULL, NULL, NULL, 1, 1, 0, 0, '2026-10-09 01:32:02'),
(32, 4, 3, 'alx', 'text', NULL, NULL, NULL, NULL, 1, 1, 0, 0, '2026-10-09 01:32:11'),
(33, 4, 3, '⚠️ Ali Ahmed took a screenshot of this conversation.', '', NULL, NULL, NULL, NULL, 1, 1, 0, 0, '2026-10-09 01:37:53'),
(34, 4, 3, '⚠️ Ali Ahmed took a screenshot of this conversation.', '', NULL, NULL, NULL, NULL, 1, 1, 0, 0, '2026-10-09 01:38:00'),
(35, 3, 5, 'hhh', 'text', NULL, NULL, NULL, NULL, 1, 1, 0, 0, '2026-10-09 01:38:43'),
(36, 4, 3, '⚠️ Ali Ahmed took a screenshot of this conversation.', '', NULL, NULL, NULL, NULL, 1, 1, 0, 0, '2026-10-09 01:42:07'),
(37, 3, 4, '⚠️ Anas Abdiwahid took a screenshot of this conversation.', '', NULL, NULL, NULL, NULL, 1, 1, 0, 0, '2026-10-09 01:42:15'),
(38, 3, 5, 'hhh', 'text', NULL, NULL, NULL, NULL, 1, 1, 0, 0, '2026-10-09 01:50:26'),
(39, 3, 5, 'hhhh', 'text', NULL, NULL, NULL, NULL, 1, 1, 0, 0, '2026-10-09 01:55:30'),
(40, 3, 4, 'hhh', 'text', NULL, NULL, NULL, NULL, 1, 1, 0, 0, '2026-10-09 02:46:34'),
(41, 6, 4, 'Asc', 'text', NULL, NULL, NULL, NULL, 1, 1, 0, 0, '2026-10-09 02:56:36'),
(42, 4, 6, 'wcs', 'text', NULL, NULL, NULL, NULL, 1, 1, 0, 0, '2026-10-09 02:56:51'),
(43, 4, 6, 'asc', 'text', NULL, NULL, NULL, NULL, 1, 1, 0, 0, '2026-10-09 03:09:40'),
(44, 6, 4, 'hh', 'text', NULL, NULL, NULL, NULL, 1, 1, 0, 0, '2026-10-09 03:16:19');

-- --------------------------------------------------------

--
-- Table structure for table `message_reactions`
--

CREATE TABLE `message_reactions` (
  `id` int(11) NOT NULL,
  `message_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `reaction` varchar(16) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `message_reactions`
--

INSERT INTO `message_reactions` (`id`, `message_id`, `user_id`, `reaction`, `created_at`) VALUES
(1, 1, 2, '❤️', '2026-10-08 13:22:14');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `sender_id` int(11) DEFAULT NULL,
  `type` varchar(50) NOT NULL,
  `message` varchar(255) NOT NULL,
  `reference_id` int(11) DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `user_id`, `sender_id`, `type`, `message`, `reference_id`, `is_read`, `created_at`) VALUES
(1, 1, 2, 'friend_request', 'sent you a friend request.', 1, 0, '2026-10-08 13:22:14'),
(2, 2, 1, 'friend_accepted', 'accepted your friend request.', 1, 0, '2026-10-08 13:22:14'),
(3, 1, 2, 'new_message', 'Hello Anas! 👋 Testing real-time A/N Chat...', 1, 0, '2026-10-08 13:22:14'),
(4, 2, 1, 'new_message', 'Hey Ahmed! Real-time chat is working smo...', 2, 0, '2026-10-08 13:22:14'),
(5, 4, 3, 'friend_request', 'sent you a friend request.', 2, 1, '2026-10-08 13:37:42'),
(6, 3, 4, 'friend_accepted', 'accepted your friend request.', 2, 1, '2026-10-08 13:37:51'),
(7, 3, 4, 'new_message', 'hi', 3, 1, '2026-10-08 13:37:56'),
(8, 4, 3, 'new_message', '🎤 Voice message', 4, 1, '2026-10-08 13:38:18'),
(9, 3, 4, 'new_message', '❤️', 5, 1, '2026-10-08 13:39:43'),
(10, 4, 3, 'new_message', 'Asc', 6, 1, '2026-10-08 13:52:36'),
(11, 3, 4, 'new_message', 'Wcs', 7, 1, '2026-10-08 13:52:52'),
(12, 4, 5, 'friend_request', 'sent you a friend request.', 3, 1, '2026-10-08 14:48:26'),
(13, 3, 5, 'friend_request', 'sent you a friend request.', 4, 1, '2026-10-08 14:48:37'),
(14, 5, 3, 'friend_accepted', 'accepted your friend request.', 4, 0, '2026-10-08 14:48:47'),
(15, 5, 3, 'screenshot_alert', '⚠️ Anas Abdiwahid took a screenshot of your chat.', 8, 0, '2026-10-08 14:48:56'),
(16, 3, 5, 'screenshot_alert', '⚠️ A/N Admin took a screenshot of your chat.', 9, 1, '2026-10-08 14:49:16'),
(17, 5, 3, 'screenshot_alert', '⚠️ Anas Abdiwahid took a screenshot of your chat.', 10, 0, '2026-10-08 14:50:42'),
(18, 3, 5, 'new_message', 'anas', 11, 0, '2026-10-08 15:16:26'),
(19, 3, 5, 'new_message', 'hhhhh', 12, 0, '2026-10-09 00:37:25'),
(20, 5, 3, 'missed_call', 'Missed voice call.', 9, 0, '2026-10-09 00:38:10'),
(21, 3, 5, 'missed_call', 'Missed voice call.', 10, 0, '2026-10-09 00:42:30'),
(22, 3, 5, 'missed_call', 'Missed voice call.', 12, 0, '2026-10-09 00:58:30'),
(23, 5, 3, 'new_message', 'hh', 13, 0, '2026-10-09 00:58:44'),
(24, 3, 5, 'new_message', 'hhh', 15, 0, '2026-10-09 01:09:23'),
(25, 5, 3, 'new_message', 'hhh', 16, 0, '2026-10-09 01:09:40'),
(26, 3, 5, 'new_message', 'wraaa', 17, 0, '2026-10-09 01:09:48'),
(27, 5, 3, 'new_message', 'wraa', 18, 0, '2026-10-09 01:10:18'),
(28, 3, 5, 'new_message', 'wraa', 19, 0, '2026-10-09 01:10:31'),
(29, 5, 3, 'new_message', 'hayye', 20, 0, '2026-10-09 01:10:42'),
(30, 3, 5, 'new_message', 'hyye', 21, 0, '2026-10-09 01:23:08'),
(31, 5, 3, 'new_message', 'haa', 22, 0, '2026-10-09 01:23:18'),
(32, 5, 3, 'new_message', 'anas', 23, 0, '2026-10-09 01:26:02'),
(33, 3, 5, 'new_message', 'anas', 24, 0, '2026-10-09 01:26:11'),
(34, 5, 3, 'new_message', 'anas', 25, 0, '2026-10-09 01:26:24'),
(35, 3, 5, 'new_message', 'ali', 26, 0, '2026-10-09 01:26:31'),
(36, 5, 3, 'new_message', 'ali', 27, 0, '2026-10-09 01:26:39'),
(37, 4, 3, 'new_message', 'ali', 28, 1, '2026-10-09 01:26:55'),
(38, 3, 4, 'new_message', '🎤 Voice message', 29, 0, '2026-10-09 01:31:30'),
(39, 4, 3, 'new_message', 'alx', 30, 1, '2026-10-09 01:31:45'),
(40, 4, 3, 'new_message', 'wali qalad ayaa jiro', 31, 1, '2026-10-09 01:32:02'),
(41, 3, 4, 'new_message', 'alx', 32, 0, '2026-10-09 01:32:11'),
(42, 3, 4, 'screenshot_alert', '⚠️ Ali Ahmed took a screenshot of your chat.', 33, 0, '2026-10-09 01:37:53'),
(43, 3, 4, 'screenshot_alert', '⚠️ Ali Ahmed took a screenshot of your chat.', 34, 0, '2026-10-09 01:38:00'),
(44, 5, 3, 'new_message', 'hhh', 35, 0, '2026-10-09 01:38:43'),
(45, 3, 4, 'screenshot_alert', '⚠️ Ali Ahmed took a screenshot of your chat.', 36, 0, '2026-10-09 01:42:07'),
(46, 4, 3, 'screenshot_alert', '⚠️ Anas Abdiwahid took a screenshot of your chat.', 37, 1, '2026-10-09 01:42:15'),
(47, 3, 4, 'missed_call', 'Missed voice call.', 17, 0, '2026-10-09 01:42:21'),
(48, 5, 3, 'new_message', 'hhh', 38, 0, '2026-10-09 01:50:26'),
(49, 3, 5, 'missed_call', 'Missed voice call.', 19, 0, '2026-10-09 01:52:52'),
(50, 5, 3, 'new_message', 'hhhh', 39, 0, '2026-10-09 01:55:30'),
(51, 3, 5, 'missed_call', 'Missed voice call.', 22, 0, '2026-10-09 02:04:46'),
(52, 3, 5, 'missed_call', 'Missed voice call.', 23, 0, '2026-10-09 02:07:35'),
(53, 3, 5, 'missed_call', 'Missed voice call.', 25, 0, '2026-10-09 02:16:16'),
(54, 5, 3, 'missed_call', 'Missed voice call.', 27, 0, '2026-10-09 02:18:41'),
(55, 4, 3, 'new_message', 'hhh', 40, 1, '2026-10-09 02:46:34'),
(56, 6, 4, 'friend_request', 'sent you a friend request.', 5, 1, '2026-10-09 02:56:14'),
(57, 4, 6, 'friend_accepted', 'accepted your friend request.', 5, 1, '2026-10-09 02:56:27'),
(58, 4, 6, 'new_message', 'Asc', 41, 1, '2026-10-09 02:56:36'),
(59, 6, 4, 'new_message', 'wcs', 42, 0, '2026-10-09 02:56:51'),
(60, 6, 4, 'new_message', 'asc', 43, 0, '2026-10-09 03:09:40'),
(61, 4, 6, 'new_message', 'hh', 44, 0, '2026-10-09 03:16:19');

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `id` int(11) NOT NULL,
  `reporter_id` int(11) NOT NULL,
  `reported_user_id` int(11) NOT NULL,
  `reason` enum('Spam','Harassment','Fake account','Inappropriate content','Other') NOT NULL,
  `details` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `screenshot_logs`
--

CREATE TABLE `screenshot_logs` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `target_user_id` int(11) NOT NULL,
  `action_type` enum('screenshot','screen_recording') DEFAULT 'screenshot',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `screenshot_logs`
--

INSERT INTO `screenshot_logs` (`id`, `user_id`, `target_user_id`, `action_type`, `created_at`) VALUES
(1, 3, 5, 'screenshot', '2026-10-08 14:48:56'),
(2, 5, 3, 'screenshot', '2026-10-08 14:49:16'),
(3, 3, 5, 'screenshot', '2026-10-08 14:50:42'),
(4, 4, 3, 'screenshot', '2026-10-09 01:37:53'),
(5, 4, 3, 'screenshot', '2026-10-09 01:38:00'),
(6, 4, 3, 'screenshot', '2026-10-09 01:42:07'),
(7, 3, 4, 'screenshot', '2026-10-09 01:42:15');

-- --------------------------------------------------------

--
-- Table structure for table `system_settings`
--

CREATE TABLE `system_settings` (
  `setting_key` varchar(64) NOT NULL,
  `setting_value` text NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `system_settings`
--

INSERT INTO `system_settings` (`setting_key`, `setting_value`, `description`, `updated_at`) VALUES
('screenshot_detection', '0', 'Enable real-time screenshot and screen recording alert in chats', '2026-10-09 01:48:15');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `password` varchar(255) NOT NULL,
  `profile_image` varchar(255) DEFAULT NULL,
  `bio` varchar(255) DEFAULT 'Hey there! I am using A/N Chat.',
  `status` enum('online','offline','away') DEFAULT 'offline',
  `last_seen` datetime DEFAULT current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `is_admin` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullname`, `phone`, `password`, `profile_image`, `bio`, `status`, `last_seen`, `created_at`, `updated_at`, `is_admin`) VALUES
(1, 'Anas Abdiwahid', '7766554499', '$2y$10$GvgoDBbQHF5d7VGbkO4KQ.GM0HwDZOFLwflf9TgBJekkzVqavjT6S', 'brand-avatar.jpg', 'Hey there! I am using A/N Chat.', 'offline', '2026-10-09 05:19:40', '2026-10-08 13:22:13', '2026-10-09 02:19:40', 1),
(2, 'Ahmed Ali', '6677889900', '$2y$10$Cr4lIdz0KOym/nhc3Xg0TerM9VD/.d6piGgdBPrWReFbLbzvFmGj.', NULL, 'Hey there! I am using A/N Chat.', 'offline', '2026-10-09 05:19:40', '2026-10-08 13:22:14', '2026-10-09 02:19:40', 0),
(3, 'Anas Abdiwahid', '252616256534', '$2y$10$VTllq2Ah.chO0QjX.fhLx.AZlO72bivUAyp.hr1mjR0g3dGVmE62q', NULL, 'Hey there! I am using A/N Chat.', 'offline', '2026-10-09 05:55:24', '2026-10-08 13:28:13', '2026-10-09 02:55:24', 0),
(4, 'Ali Ahmed', '66666666', '$2y$10$5xMo06fgxtJSJd4IboyEAOwr52wj9JQ66HkrAYSdbKv9QkpZ7yqUy', 'avatar_6ac7a2c035eb64.58598088.png', 'Hey there! I am using A/N Chat.', 'online', '2026-10-09 06:19:12', '2026-10-08 13:31:59', '2026-10-09 03:19:12', 0),
(5, 'A/N Admin', '613496943', '$2y$10$mnA8qmRMfgmLqgnCl7iBMeGEpU3L9w7Q47FQ7AXNtRt786Xi1sGj2', 'assets/images/logo.png', 'System Administrator — A/N Chat', 'offline', '2026-10-09 05:45:57', '2026-10-08 14:45:20', '2026-10-09 02:45:57', 1),
(6, 'Maxamed', '77777777', '$2y$10$dmC4Ez6LaszspRLDmkR48.UOxTgN6Y.KigtqKkp.Zw8lj/Ox9tS0K', NULL, 'Hey there! I am using A/N Chat.', 'online', '2026-10-09 06:19:51', '2026-10-09 02:55:47', '2026-10-09 03:19:51', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_settings`
--

CREATE TABLE `user_settings` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `theme` enum('light','dark') DEFAULT 'light',
  `notification_sound` tinyint(1) DEFAULT 1,
  `privacy_last_seen` enum('everyone','friends','nobody') DEFAULT 'everyone',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_settings`
--

INSERT INTO `user_settings` (`id`, `user_id`, `theme`, `notification_sound`, `privacy_last_seen`, `created_at`, `updated_at`) VALUES
(1, 1, 'light', 1, 'everyone', '2026-10-08 13:22:13', '2026-10-08 13:22:13'),
(2, 2, 'light', 1, 'everyone', '2026-10-08 13:22:14', '2026-10-08 13:22:14'),
(3, 3, 'light', 1, 'everyone', '2026-10-08 13:28:13', '2026-10-08 14:04:35'),
(4, 4, 'dark', 1, 'everyone', '2026-10-08 13:31:59', '2026-10-09 03:13:05'),
(11, 5, 'dark', 1, 'everyone', '2026-10-08 14:45:20', '2026-10-08 14:49:48'),
(15, 6, 'light', 1, 'everyone', '2026-10-09 02:55:47', '2026-10-09 02:55:47');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blocked_users`
--
ALTER TABLE `blocked_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_blocked_pair` (`user_id`,`blocked_user_id`),
  ADD KEY `fk_block_target` (`blocked_user_id`);

--
-- Indexes for table `calls`
--
ALTER TABLE `calls`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_call_caller` (`caller_id`),
  ADD KEY `idx_call_receiver` (`receiver_id`),
  ADD KEY `idx_call_created` (`created_at`);

--
-- Indexes for table `call_signals`
--
ALTER TABLE `call_signals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_call_signal_recipient` (`call_id`,`to_user_id`,`id`),
  ADD KEY `idx_call_signal_created` (`created_at`);

--
-- Indexes for table `friendships`
--
ALTER TABLE `friendships`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_friendship` (`user_id`,`friend_id`),
  ADD KEY `fk_friend_other` (`friend_id`);

--
-- Indexes for table `friend_requests`
--
ALTER TABLE `friend_requests`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_friend_req` (`sender_id`,`receiver_id`),
  ADD KEY `idx_freq_receiver` (`receiver_id`,`status`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_msg_sender` (`sender_id`),
  ADD KEY `idx_msg_receiver` (`receiver_id`),
  ADD KEY `idx_msg_convo` (`sender_id`,`receiver_id`,`created_at`);

--
-- Indexes for table `message_reactions`
--
ALTER TABLE `message_reactions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_msg_reaction` (`message_id`,`user_id`),
  ADD KEY `fk_react_user` (`user_id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_notif_user` (`user_id`,`is_read`),
  ADD KEY `fk_notif_sender` (`sender_id`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_report_user` (`reporter_id`),
  ADD KEY `fk_report_target` (`reported_user_id`);

--
-- Indexes for table `screenshot_logs`
--
ALTER TABLE `screenshot_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_slog_user` (`user_id`),
  ADD KEY `idx_slog_target` (`target_user_id`);

--
-- Indexes for table `system_settings`
--
ALTER TABLE `system_settings`
  ADD PRIMARY KEY (`setting_key`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `phone` (`phone`),
  ADD KEY `idx_users_phone` (`phone`),
  ADD KEY `idx_users_fullname` (`fullname`),
  ADD KEY `idx_users_status` (`status`);

--
-- Indexes for table `user_settings`
--
ALTER TABLE `user_settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blocked_users`
--
ALTER TABLE `blocked_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `calls`
--
ALTER TABLE `calls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `call_signals`
--
ALTER TABLE `call_signals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `friendships`
--
ALTER TABLE `friendships`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `friend_requests`
--
ALTER TABLE `friend_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `message_reactions`
--
ALTER TABLE `message_reactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `screenshot_logs`
--
ALTER TABLE `screenshot_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user_settings`
--
ALTER TABLE `user_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `blocked_users`
--
ALTER TABLE `blocked_users`
  ADD CONSTRAINT `fk_block_target` FOREIGN KEY (`blocked_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_block_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `calls`
--
ALTER TABLE `calls`
  ADD CONSTRAINT `fk_call_caller` FOREIGN KEY (`caller_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_call_receiver` FOREIGN KEY (`receiver_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `friendships`
--
ALTER TABLE `friendships`
  ADD CONSTRAINT `fk_friend_other` FOREIGN KEY (`friend_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_friend_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `friend_requests`
--
ALTER TABLE `friend_requests`
  ADD CONSTRAINT `fk_freq_receiver` FOREIGN KEY (`receiver_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_freq_sender` FOREIGN KEY (`sender_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `fk_msg_receiver` FOREIGN KEY (`receiver_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_msg_sender` FOREIGN KEY (`sender_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `message_reactions`
--
ALTER TABLE `message_reactions`
  ADD CONSTRAINT `fk_react_msg` FOREIGN KEY (`message_id`) REFERENCES `messages` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_react_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `fk_notif_sender` FOREIGN KEY (`sender_id`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_notif_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reports`
--
ALTER TABLE `reports`
  ADD CONSTRAINT `fk_report_target` FOREIGN KEY (`reported_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_report_user` FOREIGN KEY (`reporter_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `screenshot_logs`
--
ALTER TABLE `screenshot_logs`
  ADD CONSTRAINT `fk_slog_target` FOREIGN KEY (`target_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_slog_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_settings`
--
ALTER TABLE `user_settings`
  ADD CONSTRAINT `fk_settings_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
