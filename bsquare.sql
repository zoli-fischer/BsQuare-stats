--
-- Database: `bsquare`
--

-- --------------------------------------------------------

--
-- Table structure for table `api_calls`
--

CREATE TABLE `api_calls` (
  `id` int(10) UNSIGNED NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `cmd` varchar(32) COLLATE utf8_danish_ci NOT NULL,
  `data_json` longtext COLLATE utf8_danish_ci NOT NULL,
  `ip` varchar(64) COLLATE utf8_danish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_danish_ci;

--
-- Dumping data for table `api_calls`
--

INSERT INTO `api_calls` (`id`, `created`, `cmd`, `data_json`, `ip`) VALUES
(1, '2015-11-04 18:58:40', 'check_cpr', '{"api":"","cmd":"check_cpr","cpr":"1510833607","_ga":"GA1.2.1522700634.1441185321","lang2cookie":"en","PHPSESSID":"fn6rsk50vp59l94ko5e01p3rl3"}', '94.126.3.127'),
(2, '2015-11-04 18:59:34', 'check_cpr', '{"api":"","cmd":"check_cpr","cpr":"1510833607"}', '94.126.3.127'),
(3, '2015-11-14 09:38:21', 'check_cpr', '{"api":"","cmd":"check_cpr","cpr":"1510833607"}', '94.126.3.127'),
(4, '2015-11-21 09:59:10', 'new_result', '{"api":"","cmd":"check_cpr","cpr":"1510833607","result":"{\\"score_left\\":-200,\\"score_right\\":-200,\\"result\\":[{\\"hz\\":\\"1000R\\",\\"answer\\":\\"R\\"},{\\"hz\\":\\"2000L\\",\\"answer\\":\\"L\\"},{\\"hz\\":\\"500R\\",\\"answer\\":\\"R\\"},{\\"hz\\":\\"4000R\\",\\"answer\\":\\"L\\"},{\\"hz\\":\\"2000R\\",\\"answer\\":\\"R\\"},{\\"hz\\":\\"500L\\",\\"answer\\":\\"L\\"},{\\"hz\\":\\"4000L\\",\\"answer\\":\\"R\\"},{\\"hz\\":\\"\\",\\"answer\\":\\"L\\"},{\\"hz\\":\\"1000L\\",\\"answer\\":\\"R\\"}]}"}', '94.126.3.127'),
(5, '2015-11-21 10:49:02', 'new_result', '{"api":"","cmd":"check_cpr","cpr":"1510833607","result":"{\\"score_left\\":20,\\"score_right\\":20,\\"score\\":1,\\"result\\":[{\\"hz\\":\\"4000R\\",\\"answer\\":\\"R\\"},{\\"hz\\":\\"2000L\\",\\"answer\\":\\"L\\"},{\\"hz\\":\\"500L\\",\\"answer\\":\\"R\\"},{\\"hz\\":\\"1000L\\",\\"answer\\":\\"L\\"},{\\"hz\\":\\"4000L\\",\\"answer\\":\\"L\\"},{\\"hz\\":\\"2000R\\",\\"answer\\":\\"R\\"},{\\"hz\\":\\"\\",\\"answer\\":\\"L\\"},{\\"hz\\":\\"500R\\",\\"answer\\":\\"R\\"},{\\"hz\\":\\"1000R\\",\\"answer\\":\\"L\\"}]}"}', '94.126.3.127'),
(6, '2015-11-21 10:58:31', 'check_cpr', '{"api":"","cmd":"check_cpr","cpr":"1510833607"}', '94.126.3.127'),
(7, '2015-11-21 10:58:43', 'check_cpr', '{"api":"","cmd":"check_cpr","cpr":"1510023674","PHPSESSID":"dkd0bgc3msircas4slf9b16a05"}', '94.126.3.127'),
(8, '2015-11-21 11:00:36', 'check_cpr', '{"api":"","cmd":"check_cpr","cpr":"1510833607","PHPSESSID":"dkd0bgc3msircas4slf9b16a05"}', '94.126.3.127'),
(9, '2015-11-21 11:07:36', 'new_result', '{"api":"","cmd":"new_result","cpr":"1510833607","result":"{\\"score_left\\":-20,\\"score_right\\":-20,\\"score\\":1,\\"result\\":[{\\"hz\\":\\"2000L\\",\\"answer\\":\\"L\\"},{\\"hz\\":\\"\\",\\"answer\\":\\"R\\"},{\\"hz\\":\\"500R\\",\\"answer\\":\\"L\\"},{\\"hz\\":\\"4000R\\",\\"answer\\":\\"R\\"},{\\"hz\\":\\"1000R\\",\\"answer\\":\\"R\\"},{\\"hz\\":\\"2000R\\",\\"answer\\":\\"L\\"},{\\"hz\\":\\"1000L\\",\\"answer\\":\\"R\\"},{\\"hz\\":\\"4000L\\",\\"answer\\":\\"L\\"},{\\"hz\\":\\"500L\\",\\"answer\\":\\"R\\"}]}"}', '94.126.3.127'),
(10, '2015-11-21 11:08:01', 'new_result', '{"api":"","cmd":"new_result","cpr":"1510833607","result":"{\\"score_left\\":-20,\\"score_right\\":-20,\\"score\\":1,\\"result\\":[{\\"hz\\":\\"2000L\\",\\"answer\\":\\"L\\"},{\\"hz\\":\\"\\",\\"answer\\":\\"R\\"},{\\"hz\\":\\"500R\\",\\"answer\\":\\"L\\"},{\\"hz\\":\\"4000R\\",\\"answer\\":\\"R\\"},{\\"hz\\":\\"1000R\\",\\"answer\\":\\"R\\"},{\\"hz\\":\\"2000R\\",\\"answer\\":\\"L\\"},{\\"hz\\":\\"1000L\\",\\"answer\\":\\"R\\"},{\\"hz\\":\\"4000L\\",\\"answer\\":\\"L\\"},{\\"hz\\":\\"500L\\",\\"answer\\":\\"R\\"}]}","_ga":"GA1.2.1522700634.1441185321","lang2cookie":"en","PHPSESSID":"c3u7lq6lak2g4osc3ugb1foh45"}', '94.126.3.127'),
(11, '2015-11-21 11:08:07', 'new_result', '{"api":"","cmd":"new_result","cpr":"1510833607","result":"{\\"score_left\\":-20,\\"score_right\\":-20,\\"score\\":1,\\"result\\":[{\\"hz\\":\\"2000L\\",\\"answer\\":\\"L\\"},{\\"hz\\":\\"\\",\\"answer\\":\\"R\\"},{\\"hz\\":\\"500R\\",\\"answer\\":\\"L\\"},{\\"hz\\":\\"4000R\\",\\"answer\\":\\"R\\"},{\\"hz\\":\\"1000R\\",\\"answer\\":\\"R\\"},{\\"hz\\":\\"2000R\\",\\"answer\\":\\"L\\"},{\\"hz\\":\\"1000L\\",\\"answer\\":\\"R\\"},{\\"hz\\":\\"4000L\\",\\"answer\\":\\"L\\"},{\\"hz\\":\\"500L\\",\\"answer\\":\\"R\\"}]}","_ga":"GA1.2.1522700634.1441185321","lang2cookie":"en","PHPSESSID":"c3u7lq6lak2g4osc3ugb1foh45"}', '94.126.3.127'),
(12, '2015-11-21 11:19:35', 'new_result', '{"api":"","cmd":"new_result","cpr":"1510833607","result":"{\\"score_left\\":-20,\\"score_right\\":-20,\\"score\\":1,\\"result\\":[{\\"hz\\":\\"2000L\\",\\"answer\\":\\"L\\"},{\\"hz\\":\\"\\",\\"answer\\":\\"R\\"},{\\"hz\\":\\"500R\\",\\"answer\\":\\"L\\"},{\\"hz\\":\\"4000R\\",\\"answer\\":\\"R\\"},{\\"hz\\":\\"1000R\\",\\"answer\\":\\"R\\"},{\\"hz\\":\\"2000R\\",\\"answer\\":\\"L\\"},{\\"hz\\":\\"1000L\\",\\"answer\\":\\"R\\"},{\\"hz\\":\\"4000L\\",\\"answer\\":\\"L\\"},{\\"hz\\":\\"500L\\",\\"answer\\":\\"R\\"}]}","_ga":"GA1.2.1522700634.1441185321","lang2cookie":"en","PHPSESSID":"c3u7lq6lak2g4osc3ugb1foh45"}', '94.126.3.127'),
(13, '2015-11-21 11:20:01', 'new_result', '{"api":"","cmd":"new_result","cpr":"1510833607","result":"{\\"score_left\\":-20,\\"score_right\\":-20,\\"score\\":1,\\"result\\":[{\\"hz\\":\\"2000L\\",\\"answer\\":\\"L\\"},{\\"hz\\":\\"\\",\\"answer\\":\\"R\\"},{\\"hz\\":\\"500R\\",\\"answer\\":\\"L\\"},{\\"hz\\":\\"4000R\\",\\"answer\\":\\"R\\"},{\\"hz\\":\\"1000R\\",\\"answer\\":\\"R\\"},{\\"hz\\":\\"2000R\\",\\"answer\\":\\"L\\"},{\\"hz\\":\\"1000L\\",\\"answer\\":\\"R\\"},{\\"hz\\":\\"4000L\\",\\"answer\\":\\"L\\"},{\\"hz\\":\\"500L\\",\\"answer\\":\\"R\\"}]}","_ga":"GA1.2.1522700634.1441185321","lang2cookie":"en","PHPSESSID":"c3u7lq6lak2g4osc3ugb1foh45"}', '94.126.3.127'),
(14, '2015-11-21 11:20:15', 'new_result', '{"api":"","cmd":"new_result","cpr":"1510833607","result":"{\\"score_left\\":-20,\\"score_right\\":-20,\\"score\\":1,\\"result\\":[{\\"hz\\":\\"2000L\\",\\"answer\\":\\"L\\"},{\\"hz\\":\\"\\",\\"answer\\":\\"R\\"},{\\"hz\\":\\"500R\\",\\"answer\\":\\"L\\"},{\\"hz\\":\\"4000R\\",\\"answer\\":\\"R\\"},{\\"hz\\":\\"1000R\\",\\"answer\\":\\"R\\"},{\\"hz\\":\\"2000R\\",\\"answer\\":\\"L\\"},{\\"hz\\":\\"1000L\\",\\"answer\\":\\"R\\"},{\\"hz\\":\\"4000L\\",\\"answer\\":\\"L\\"},{\\"hz\\":\\"500L\\",\\"answer\\":\\"R\\"}]}","_ga":"GA1.2.1522700634.1441185321","lang2cookie":"en","PHPSESSID":"c3u7lq6lak2g4osc3ugb1foh45"}', '94.126.3.127'),
(15, '2015-11-21 11:20:30', 'new_result', '{"api":"","cmd":"new_result","cpr":"1510833607","result":"{\\"score_left\\":-20,\\"score_right\\":-20,\\"score\\":1,\\"result\\":[{\\"hz\\":\\"2000L\\",\\"answer\\":\\"L\\"},{\\"hz\\":\\"\\",\\"answer\\":\\"R\\"},{\\"hz\\":\\"500R\\",\\"answer\\":\\"L\\"},{\\"hz\\":\\"4000R\\",\\"answer\\":\\"R\\"},{\\"hz\\":\\"1000R\\",\\"answer\\":\\"R\\"},{\\"hz\\":\\"2000R\\",\\"answer\\":\\"L\\"},{\\"hz\\":\\"1000L\\",\\"answer\\":\\"R\\"},{\\"hz\\":\\"4000L\\",\\"answer\\":\\"L\\"},{\\"hz\\":\\"500L\\",\\"answer\\":\\"R\\"}]}","_ga":"GA1.2.1522700634.1441185321","lang2cookie":"en","PHPSESSID":"c3u7lq6lak2g4osc3ugb1foh45"}', '94.126.3.127'),
(16, '2015-11-21 11:20:44', 'new_result', '{"api":"","cmd":"new_result","cpr":"1510833607","result":"{\\"score_left\\":-20,\\"score_right\\":-20,\\"score\\":1,\\"result\\":[{\\"hz\\":\\"2000L\\",\\"answer\\":\\"L\\"},{\\"hz\\":\\"\\",\\"answer\\":\\"R\\"},{\\"hz\\":\\"500R\\",\\"answer\\":\\"L\\"},{\\"hz\\":\\"4000R\\",\\"answer\\":\\"R\\"},{\\"hz\\":\\"1000R\\",\\"answer\\":\\"R\\"},{\\"hz\\":\\"2000R\\",\\"answer\\":\\"L\\"},{\\"hz\\":\\"1000L\\",\\"answer\\":\\"R\\"},{\\"hz\\":\\"4000L\\",\\"answer\\":\\"L\\"},{\\"hz\\":\\"500L\\",\\"answer\\":\\"R\\"}]}","_ga":"GA1.2.1522700634.1441185321","lang2cookie":"en","PHPSESSID":"c3u7lq6lak2g4osc3ugb1foh45"}', '94.126.3.127'),
(17, '2015-11-21 11:21:11', 'new_result', '{"api":"","cmd":"new_result","cpr":"1510833607","result":"{\\"score_left\\":-20,\\"score_right\\":-20,\\"score\\":1,\\"result\\":[{\\"hz\\":\\"2000L\\",\\"answer\\":\\"L\\"},{\\"hz\\":\\"\\",\\"answer\\":\\"R\\"},{\\"hz\\":\\"500R\\",\\"answer\\":\\"L\\"},{\\"hz\\":\\"4000R\\",\\"answer\\":\\"R\\"},{\\"hz\\":\\"1000R\\",\\"answer\\":\\"R\\"},{\\"hz\\":\\"2000R\\",\\"answer\\":\\"L\\"},{\\"hz\\":\\"1000L\\",\\"answer\\":\\"R\\"},{\\"hz\\":\\"4000L\\",\\"answer\\":\\"L\\"},{\\"hz\\":\\"500L\\",\\"answer\\":\\"R\\"}]}","_ga":"GA1.2.1522700634.1441185321","lang2cookie":"en","PHPSESSID":"c3u7lq6lak2g4osc3ugb1foh45"}', '94.126.3.127'),
(18, '2015-11-21 11:21:38', 'new_result', '{"api":"","cmd":"new_result","cpr":"1510833607","result":"{\\"score_left\\":-20,\\"score_right\\":-20,\\"score\\":1,\\"result\\":[{\\"hz\\":\\"2000L\\",\\"answer\\":\\"L\\"},{\\"hz\\":\\"\\",\\"answer\\":\\"R\\"},{\\"hz\\":\\"500R\\",\\"answer\\":\\"L\\"},{\\"hz\\":\\"4000R\\",\\"answer\\":\\"R\\"},{\\"hz\\":\\"1000R\\",\\"answer\\":\\"R\\"},{\\"hz\\":\\"2000R\\",\\"answer\\":\\"L\\"},{\\"hz\\":\\"1000L\\",\\"answer\\":\\"R\\"},{\\"hz\\":\\"4000L\\",\\"answer\\":\\"L\\"},{\\"hz\\":\\"500L\\",\\"answer\\":\\"R\\"}]}","_ga":"GA1.2.1522700634.1441185321","lang2cookie":"en","PHPSESSID":"c3u7lq6lak2g4osc3ugb1foh45"}', '94.126.3.127'),
(19, '2015-11-21 11:21:41', 'new_result', '{"api":"","cmd":"new_result","cpr":"1510833607","result":"{\\"score_left\\":-20,\\"score_right\\":-20,\\"score\\":1,\\"result\\":[{\\"hz\\":\\"2000L\\",\\"answer\\":\\"L\\"},{\\"hz\\":\\"\\",\\"answer\\":\\"R\\"},{\\"hz\\":\\"500R\\",\\"answer\\":\\"L\\"},{\\"hz\\":\\"4000R\\",\\"answer\\":\\"R\\"},{\\"hz\\":\\"1000R\\",\\"answer\\":\\"R\\"},{\\"hz\\":\\"2000R\\",\\"answer\\":\\"L\\"},{\\"hz\\":\\"1000L\\",\\"answer\\":\\"R\\"},{\\"hz\\":\\"4000L\\",\\"answer\\":\\"L\\"},{\\"hz\\":\\"500L\\",\\"answer\\":\\"R\\"}]}","_ga":"GA1.2.1522700634.1441185321","lang2cookie":"en","PHPSESSID":"c3u7lq6lak2g4osc3ugb1foh45"}', '94.126.3.127'),
(20, '2015-11-21 18:17:25', 'new_result', '{"api":"","cmd":"new_result","cpr":"1510833607","result":"{\\"score_left\\":-20,\\"score_right\\":-20,\\"score\\":1,\\"result\\":[{\\"hz\\":\\"2000L\\",\\"answer\\":\\"L\\"},{\\"hz\\":\\"\\",\\"answer\\":\\"R\\"},{\\"hz\\":\\"500R\\",\\"answer\\":\\"L\\"},{\\"hz\\":\\"4000R\\",\\"answer\\":\\"R\\"},{\\"hz\\":\\"1000R\\",\\"answer\\":\\"R\\"},{\\"hz\\":\\"2000R\\",\\"answer\\":\\"L\\"},{\\"hz\\":\\"1000L\\",\\"answer\\":\\"R\\"},{\\"hz\\":\\"4000L\\",\\"answer\\":\\"L\\"},{\\"hz\\":\\"500L\\",\\"answer\\":\\"R\\"}]}","_ga":"GA1.2.1522700634.1441185321","lang2cookie":"en","PHPSESSID":"c3u7lq6lak2g4osc3ugb1foh45"}', '94.126.3.127'),
(21, '2015-11-21 18:18:08', 'new_result', '{"api":"","cmd":"new_result","cpr":"1510833607","result":"{\\"score_left\\":-20,\\"score_right\\":-20,\\"score\\":1,\\"result\\":[{\\"hz\\":\\"2000L\\",\\"answer\\":\\"L\\"},{\\"hz\\":\\"\\",\\"answer\\":\\"R\\"},{\\"hz\\":\\"500R\\",\\"answer\\":\\"L\\"},{\\"hz\\":\\"4000R\\",\\"answer\\":\\"R\\"},{\\"hz\\":\\"1000R\\",\\"answer\\":\\"R\\"},{\\"hz\\":\\"2000R\\",\\"answer\\":\\"L\\"},{\\"hz\\":\\"1000L\\",\\"answer\\":\\"R\\"},{\\"hz\\":\\"4000L\\",\\"answer\\":\\"L\\"},{\\"hz\\":\\"500L\\",\\"answer\\":\\"R\\"}]}","_ga":"GA1.2.1522700634.1441185321","lang2cookie":"en","PHPSESSID":"c3u7lq6lak2g4osc3ugb1foh45"}', '94.126.3.127'),
(22, '2015-11-21 18:20:11', 'new_result', '{"api":"","cmd":"new_result","cpr":"1510833607","result":"{\\"score_left\\":-20,\\"score_right\\":-20,\\"score\\":1,\\"result\\":[{\\"hz\\":\\"2000L\\",\\"answer\\":\\"L\\"},{\\"hz\\":\\"\\",\\"answer\\":\\"R\\"},{\\"hz\\":\\"500R\\",\\"answer\\":\\"L\\"},{\\"hz\\":\\"4000R\\",\\"answer\\":\\"R\\"},{\\"hz\\":\\"1000R\\",\\"answer\\":\\"R\\"},{\\"hz\\":\\"2000R\\",\\"answer\\":\\"L\\"},{\\"hz\\":\\"1000L\\",\\"answer\\":\\"R\\"},{\\"hz\\":\\"4000L\\",\\"answer\\":\\"L\\"},{\\"hz\\":\\"500L\\",\\"answer\\":\\"R\\"}]}","_ga":"GA1.2.1522700634.1441185321","lang2cookie":"en","PHPSESSID":"c3u7lq6lak2g4osc3ugb1foh45"}', '94.126.3.127'),
(23, '2015-11-21 18:20:39', 'new_result', '{"api":"","cmd":"new_result","cpr":"1002852637","result":"{\\"score_left\\":40,\\"score_right\\":40,\\"score\\":1,\\"result\\":[{\\"hz\\":\\"2000L\\",\\"answer\\":\\"L\\"},{\\"hz\\":\\"\\",\\"answer\\":\\"R\\"},{\\"hz\\":\\"500R\\",\\"answer\\":\\"L\\"},{\\"hz\\":\\"4000R\\",\\"answer\\":\\"R\\"},{\\"hz\\":\\"1000R\\",\\"answer\\":\\"R\\"},{\\"hz\\":\\"2000R\\",\\"answer\\":\\"L\\"},{\\"hz\\":\\"1000L\\",\\"answer\\":\\"R\\"},{\\"hz\\":\\"4000L\\",\\"answer\\":\\"L\\"},{\\"hz\\":\\"500L\\",\\"answer\\":\\"R\\"}]}","_ga":"GA1.2.1522700634.1441185321","lang2cookie":"en","PHPSESSID":"c3u7lq6lak2g4osc3ugb1foh45"}', '94.126.3.127'),
(24, '2015-11-21 18:26:39', 'new_result', '{"api":"","cmd":"new_result","cpr":"1510833607","_ga":"GA1.2.1522700634.1441185321","lang2cookie":"en","PHPSESSID":"c3u7lq6lak2g4osc3ugb1foh45"}', '94.126.3.127'),
(25, '2015-11-21 18:26:46', 'get_results', '{"api":"","cmd":"get_results","cpr":"1510833607","_ga":"GA1.2.1522700634.1441185321","lang2cookie":"en","PHPSESSID":"c3u7lq6lak2g4osc3ugb1foh45"}', '94.126.3.127'),
(26, '2015-11-21 18:27:13', 'get_results', '{"api":"","cmd":"get_results","cpr":"1510833607","_ga":"GA1.2.1522700634.1441185321","lang2cookie":"en","PHPSESSID":"c3u7lq6lak2g4osc3ugb1foh45"}', '94.126.3.127'),
(27, '2015-11-21 18:27:34', 'get_results', '{"api":"","cmd":"get_results","cpr":"1510833607","_ga":"GA1.2.1522700634.1441185321","lang2cookie":"en","PHPSESSID":"c3u7lq6lak2g4osc3ugb1foh45"}', '94.126.3.127'),
(28, '2015-11-21 18:27:45', 'get_results', '{"api":"","cmd":"get_results","cpr":"1510833607","_ga":"GA1.2.1522700634.1441185321","lang2cookie":"en","PHPSESSID":"c3u7lq6lak2g4osc3ugb1foh45"}', '94.126.3.127'),
(29, '2015-11-21 18:28:13', 'get_results', '{"api":"","cmd":"get_results","cpr":"1510833607","_ga":"GA1.2.1522700634.1441185321","lang2cookie":"en","PHPSESSID":"c3u7lq6lak2g4osc3ugb1foh45"}', '94.126.3.127'),
(30, '2015-11-21 18:40:19', 'get_results', '{"api":"","cmd":"get_results","cpr":"1510833607","_ga":"GA1.2.1522700634.1441185321","lang2cookie":"en","PHPSESSID":"c3u7lq6lak2g4osc3ugb1foh45"}', '94.126.3.127'),
(31, '2015-11-21 18:40:33', 'get_results', '{"api":"","cmd":"get_results","cpr":"1510833607","_ga":"GA1.2.1522700634.1441185321","lang2cookie":"en","PHPSESSID":"c3u7lq6lak2g4osc3ugb1foh45"}', '94.126.3.127'),
(32, '2015-11-21 18:41:03', 'get_results', '{"api":"","cmd":"get_results","cpr":"1510833607","_ga":"GA1.2.1522700634.1441185321","lang2cookie":"en","PHPSESSID":"c3u7lq6lak2g4osc3ugb1foh45"}', '94.126.3.127'),
(33, '2015-11-21 18:43:12', 'get_results', '{"api":"","cmd":"get_results","cpr":"1510833607","_ga":"GA1.2.1522700634.1441185321","lang2cookie":"en","PHPSESSID":"c3u7lq6lak2g4osc3ugb1foh45"}', '94.126.3.127'),
(34, '2015-11-21 18:43:18', 'get_results', '{"api":"","cmd":"get_results","cpr":"1510833607","_ga":"GA1.2.1522700634.1441185321","lang2cookie":"en","PHPSESSID":"c3u7lq6lak2g4osc3ugb1foh45"}', '94.126.3.127'),
(35, '2015-11-21 18:43:28', 'get_results', '{"api":"","cmd":"get_results","cpr":"1510833607","_ga":"GA1.2.1522700634.1441185321","lang2cookie":"en","PHPSESSID":"c3u7lq6lak2g4osc3ugb1foh45"}', '94.126.3.127'),
(36, '2015-11-21 19:53:39', 'get_results', '{"api":"","cmd":"get_results","cpr":"1510833607","_ga":"GA1.2.1522700634.1441185321","lang2cookie":"en","PHPSESSID":"c3u7lq6lak2g4osc3ugb1foh45"}', '94.126.3.127'),
(37, '2015-11-21 19:53:46', 'get_results', '{"api":"","cmd":"get_results","cpr":"1510833606","_ga":"GA1.2.1522700634.1441185321","lang2cookie":"en","PHPSESSID":"c3u7lq6lak2g4osc3ugb1foh45"}', '94.126.3.127'),
(38, '2015-11-21 19:53:48', 'get_results', '{"api":"","cmd":"get_results","cpr":"1510833607","_ga":"GA1.2.1522700634.1441185321","lang2cookie":"en","PHPSESSID":"c3u7lq6lak2g4osc3ugb1foh45"}', '94.126.3.127'),
(39, '2015-11-21 19:53:49', 'get_results', '{"api":"","cmd":"get_results","cpr":"1510833607","_ga":"GA1.2.1522700634.1441185321","lang2cookie":"en","PHPSESSID":"c3u7lq6lak2g4osc3ugb1foh45"}', '94.126.3.127'),
(40, '2015-11-21 21:46:13', 'new_result', '{"api":"","cmd":"new_result","cpr":"1510833607","result":"{\\"score_left\\":-20,\\"score_right\\":-60,\\"score\\":1,\\"result\\":[{\\"hz\\":\\"4000L\\",\\"answer\\":\\"L\\"},{\\"hz\\":\\"2000L\\",\\"answer\\":\\"R\\"},{\\"hz\\":\\"4000R\\",\\"answer\\":\\"L\\"},{\\"hz\\":\\"2000R\\",\\"answer\\":\\"R\\"},{\\"hz\\":\\"500R\\",\\"answer\\":\\"L\\"},{\\"hz\\":\\"\\",\\"answer\\":\\"R\\"},{\\"hz\\":\\"1000L\\",\\"answer\\":\\"R\\"},{\\"hz\\":\\"500L\\",\\"answer\\":\\"L\\"},{\\"hz\\":\\"1000R\\",\\"answer\\":\\"L\\"}]}"}', '94.126.3.127'),
(41, '2015-11-21 21:47:22', 'new_result', '{"api":"","cmd":"new_result","cpr":"1510833607","result":"{\\"score_left\\":60,\\"score_right\\":60,\\"score\\":3,\\"result\\":[{\\"hz\\":\\"\\",\\"answer\\":\\"L\\"},{\\"hz\\":\\"2000R\\",\\"answer\\":\\"R\\"},{\\"hz\\":\\"4000L\\",\\"answer\\":\\"L\\"},{\\"hz\\":\\"1000L\\",\\"answer\\":\\"L\\"},{\\"hz\\":\\"2000L\\",\\"answer\\":\\"L\\"},{\\"hz\\":\\"500R\\",\\"answer\\":\\"R\\"},{\\"hz\\":\\"1000R\\",\\"answer\\":\\"R\\"},{\\"hz\\":\\"500L\\",\\"answer\\":\\"L\\"},{\\"hz\\":\\"4000R\\",\\"answer\\":\\"R\\"}]}","PHPSESSID":"m0298rqa3jmt9kb8ftlrvjcl44"}', '94.126.3.127'),
(42, '2015-11-22 08:31:03', 'get_results', '{"api":"","cmd":"get_results","cpr":"1510833607"}', '94.126.3.127'),
(43, '2015-11-22 08:35:58', 'get_results', '{"api":"","cmd":"get_results","cpr":"1510833607"}', '94.126.3.127'),
(44, '2015-11-22 08:36:01', 'get_results', '{"api":"","cmd":"get_results","cpr":"1510833607","PHPSESSID":"v7htjeq6clrcti365phfdui455"}', '94.126.3.127'),
(45, '2015-11-22 08:37:19', 'get_results', '{"api":"","cmd":"get_results","cpr":"1510833607"}', '94.126.3.127'),
(46, '2015-11-22 08:40:26', 'get_results', '{"api":"","cmd":"get_results","cpr":"1510833607"}', '94.126.3.127'),
(47, '2015-11-22 08:46:49', 'get_results', '{"api":"","cmd":"get_results","cpr":"1510833607"}', '94.126.3.127'),
(48, '2015-11-22 08:53:23', 'get_results', '{"api":"","cmd":"get_results","cpr":"1510833607"}', '94.126.3.127'),
(49, '2015-11-22 08:57:39', 'get_results', '{"api":"","cmd":"get_results","cpr":"1510833607"}', '94.126.3.127'),
(50, '2015-11-22 08:58:47', 'get_results', '{"api":"","cmd":"get_results","cpr":"1510833607","PHPSESSID":"1qvm3qbo4u5n0tj1np9c8q9jp0"}', '94.126.3.127'),
(51, '2015-11-22 09:01:25', 'get_results', '{"api":"","cmd":"get_results","cpr":"1510833607"}', '94.126.3.127'),
(52, '2015-11-22 09:03:03', 'get_results', '{"api":"","cmd":"get_results","cpr":"1510833607"}', '94.126.3.127'),
(53, '2015-11-22 09:06:07', 'get_results', '{"api":"","cmd":"get_results","cpr":"1510833607"}', '94.126.3.127'),
(54, '2015-11-22 09:29:26', 'get_results', '{"api":"","cmd":"get_results","cpr":"1510833607"}', '94.126.3.127'),
(55, '2015-11-22 09:30:51', 'get_results', '{"api":"","cmd":"get_results","cpr":"1510833607"}', '94.126.3.127'),
(56, '2015-11-22 09:34:03', 'get_results', '{"api":"","cmd":"get_results","cpr":"1510833607"}', '94.126.3.127'),
(57, '2015-11-22 09:34:08', 'get_results', '{"api":"","cmd":"get_results","cpr":"1510833607","PHPSESSID":"4go00l57684e1i4tm382u86k94"}', '94.126.3.127'),
(58, '2015-11-22 09:34:57', 'get_results', '{"api":"","cmd":"get_results","cpr":"1510833607"}', '94.126.3.127'),
(59, '2015-11-22 09:35:57', 'get_results', '{"api":"","cmd":"get_results","cpr":"1510833607"}', '94.126.3.127'),
(60, '2015-11-22 09:36:24', 'get_results', '{"api":"","cmd":"get_results","cpr":"1510833607","PHPSESSID":"jd3i6t6mt3tg83njf72qb0dla0"}', '94.126.3.127'),
(61, '2015-11-25 07:18:41', 'check_cpr', '{"api":"","cmd":"check_cpr","cpr":"030687-3741"}', '185.19.133.3'),
(62, '2015-11-25 07:18:45', 'get_results', '{"api":"","cmd":"get_results","cpr":"030687-3741"}', '185.19.133.3'),
(63, '2015-11-25 07:19:07', 'get_results', '{"api":"","cmd":"get_results","cpr":"030687-3741"}', '185.19.133.3'),
(64, '2015-11-25 07:19:52', 'new_result', '{"api":"","cmd":"new_result","cpr":"030687-3741","result":"{\\"score_left\\":0,\\"score_right\\":0,\\"score\\":1,\\"result\\":[{\\"hz\\":\\"1000R\\",\\"answer\\":\\"L\\"},{\\"hz\\":\\"4000L\\",\\"answer\\":\\"\\"},{\\"hz\\":\\"2000L\\",\\"answer\\":\\"R\\"},{\\"hz\\":\\"2000R\\",\\"answer\\":\\"L\\"},{\\"hz\\":\\"500R\\",\\"answer\\":\\"R\\"},{\\"hz\\":\\"4000R\\",\\"answer\\":\\"L\\"},{\\"hz\\":\\"\\",\\"answer\\":\\"R\\"},{\\"hz\\":\\"1000L\\",\\"answer\\":\\"L\\"},{\\"hz\\":\\"500L\\",\\"answer\\":\\"\\"}]}"}', '185.19.133.3'),
(65, '2015-11-25 07:28:18', 'get_results', '{"api":"","cmd":"get_results","cpr":"030687-3741"}', '185.19.133.3'),
(66, '2015-11-25 07:28:30', 'check_cpr', '{"api":"","cmd":"check_cpr","cpr":"030687-3741"}', '185.19.133.3'),
(67, '2015-11-25 07:32:40', 'check_cpr', '{"api":"","cmd":"check_cpr","cpr":"030687-1234"}', '185.19.133.3'),
(68, '2015-11-25 07:32:43', 'get_results', '{"api":"","cmd":"get_results","cpr":"030687-1234"}', '185.19.133.3'),
(69, '2015-11-25 08:10:23', 'check_cpr', '{"api":"","cmd":"check_cpr","cpr":"0306871234"}', '185.19.133.3'),
(70, '2015-11-25 08:10:27', 'get_results', '{"api":"","cmd":"get_results","cpr":"0306871234"}', '185.19.133.3'),
(71, '2015-11-25 08:11:34', 'new_result', '{"api":"","cmd":"new_result","cpr":"0306871234","result":"{\\"score_left\\":20,\\"score_right\\":0,\\"score\\":1,\\"result\\":[{\\"hz\\":\\"1000R\\",\\"answer\\":\\"L\\"},{\\"hz\\":\\"500L\\",\\"answer\\":\\"R\\"},{\\"hz\\":\\"500R\\",\\"answer\\":\\"\\"},{\\"hz\\":\\"2000L\\",\\"answer\\":\\"L\\"},{\\"hz\\":\\"1000L\\",\\"answer\\":\\"R\\"},{\\"hz\\":\\"\\",\\"answer\\":\\"\\"},{\\"hz\\":\\"4000R\\",\\"answer\\":\\"R\\"},{\\"hz\\":\\"2000R\\",\\"answer\\":\\"\\"},{\\"hz\\":\\"4000L\\",\\"answer\\":\\"L\\"}]}"}', '185.19.133.3'),
(72, '2015-11-28 08:32:46', 'new_result', '{"api":"","cmd":"new_result","cpr":"1510833607","result":"{\\"fake\\":true,\\"score_left\\":0,\\"score_right\\":20,\\"score\\":1,\\"result\\":[{\\"hz\\":\\"2000R\\",\\"answer\\":\\"R\\"},{\\"hz\\":\\"500R\\",\\"answer\\":\\"L\\"},{\\"hz\\":\\"1000L\\",\\"answer\\":\\"R\\"},{\\"hz\\":\\"\\",\\"answer\\":\\"L\\"},{\\"hz\\":\\"1000R\\",\\"answer\\":\\"R\\"},{\\"hz\\":\\"500L\\",\\"answer\\":\\"\\"},{\\"hz\\":\\"2000L\\",\\"answer\\":\\"L\\"},{\\"hz\\":\\"4000R\\",\\"answer\\":\\"R\\"},{\\"hz\\":\\"4000L\\",\\"answer\\":\\"\\"}],\\"treshould_left\\":500,\\"treshould_right\\":500}"}', '94.126.3.127'),
(73, '2015-11-28 08:33:52', 'new_result', '{"api":"","cmd":"new_result","cpr":"1510833607","result":"{\\"fake\\":false,\\"score_left\\":100,\\"score_right\\":100,\\"score\\":4,\\"result\\":[{\\"hz\\":\\"500L\\",\\"answer\\":\\"L\\"},{\\"hz\\":\\"4000R\\",\\"answer\\":\\"R\\"},{\\"hz\\":\\"2000R\\",\\"answer\\":\\"R\\"},{\\"hz\\":\\"4000L\\",\\"answer\\":\\"L\\"},{\\"hz\\":\\"1000L\\",\\"answer\\":\\"L\\"},{\\"hz\\":\\"500R\\",\\"answer\\":\\"R\\"},{\\"hz\\":\\"\\",\\"answer\\":\\"\\"},{\\"hz\\":\\"2000L\\",\\"answer\\":\\"L\\"},{\\"hz\\":\\"1000R\\",\\"answer\\":\\"R\\"}],\\"treshould_left\\":6000,\\"treshould_right\\":6000}"}', '94.126.3.127'),
(74, '2015-11-28 08:37:07', 'get_results', '{"api":"","cmd":"get_results","cpr":"1510833607"}', '94.126.3.127'),
(75, '2015-11-28 08:40:35', 'new_result', '{"api":"","cmd":"new_result","cpr":"1510833607","result":"{\\"fake\\":true,\\"score_left\\":0,\\"score_right\\":0,\\"score\\":1,\\"result\\":[{\\"hz\\":\\"500L\\",\\"answer\\":\\"R\\"},{\\"hz\\":\\"4000R\\",\\"answer\\":\\"\\"},{\\"hz\\":\\"1000L\\",\\"answer\\":\\"L\\"},{\\"hz\\":\\"2000R\\",\\"answer\\":\\"\\"},{\\"hz\\":\\"500R\\",\\"answer\\":\\"R\\"},{\\"hz\\":\\"1000R\\",\\"answer\\":\\"L\\"},{\\"hz\\":\\"2000L\\",\\"answer\\":\\"\\"},{\\"hz\\":\\"4000L\\",\\"answer\\":\\"R\\"},{\\"hz\\":\\"\\",\\"answer\\":\\"L\\"}],\\"treshould_left\\":500,\\"treshould_right\\":1000}"}', '94.126.3.127'),
(76, '2015-11-28 08:42:11', 'new_result', '{"api":"","cmd":"new_result","cpr":"1510833607","result":"{\\"fake\\":true,\\"score_left\\":0,\\"score_right\\":0,\\"score\\":1,\\"result\\":[{\\"hz\\":\\"\\",\\"answer\\":\\"R\\"},{\\"hz\\":\\"4000L\\",\\"answer\\":\\"\\"},{\\"hz\\":\\"500L\\",\\"answer\\":\\"L\\"},{\\"hz\\":\\"1000R\\",\\"answer\\":\\"R\\"},{\\"hz\\":\\"500R\\",\\"answer\\":\\"\\"},{\\"hz\\":\\"4000R\\",\\"answer\\":\\"L\\"},{\\"hz\\":\\"2000R\\",\\"answer\\":\\"R\\"},{\\"hz\\":\\"2000L\\",\\"answer\\":\\"\\"},{\\"hz\\":\\"1000L\\",\\"answer\\":\\"L\\"}],\\"treshould_left\\":2000,\\"treshould_right\\":500}"}', '94.126.3.127'),
(77, '2015-11-28 08:42:28', 'get_results', '{"api":"","cmd":"get_results","cpr":"1510833607"}', '94.126.3.127'),
(78, '2015-11-28 08:48:12', 'new_result', '{"api":"","cmd":"new_result","cpr":"1510833607","result":"{\\"fake\\":false,\\"score_left\\":0,\\"score_right\\":0,\\"score\\":1,\\"result\\":[{\\"hz\\":\\"500R\\",\\"answer\\":\\"L\\"},{\\"hz\\":\\"4000L\\",\\"answer\\":\\"R\\"},{\\"hz\\":\\"500L\\",\\"answer\\":\\"L\\"},{\\"hz\\":\\"1000L\\",\\"answer\\":\\"\\"},{\\"hz\\":\\"2000L\\",\\"answer\\":\\"R\\"},{\\"hz\\":\\"1000R\\",\\"answer\\":\\"L\\"},{\\"hz\\":\\"4000R\\",\\"answer\\":\\"R\\"},{\\"hz\\":\\"\\",\\"answer\\":\\"\\"},{\\"hz\\":\\"2000R\\",\\"answer\\":\\"L\\"}],\\"threshold_left\\":1000,\\"threshold_right\\":500}"}', '94.126.3.127'),
(79, '2015-11-30 21:12:12', 'check_cpr', '{"api":"","cmd":"check_cpr","cpr":"0306873741"}', '87.60.141.180'),
(80, '2015-12-04 18:09:04', 'check_cpr', '{"api":"","cmd":"check_cpr","cpr":"2804924283"}', '130.226.70.75'),
(81, '2015-12-04 18:09:11', 'get_results', '{"api":"","cmd":"get_results","cpr":"2804924283"}', '130.226.70.75'),
(82, '2015-12-04 18:11:26', 'new_result', '{"api":"","cmd":"new_result","cpr":"2804924283","result":"{\\"fake\\":false,\\"score_left\\":100,\\"score_right\\":60,\\"score\\":3,\\"result\\":[{\\"hz\\":\\"4000R\\",\\"answer\\":\\"R\\"},{\\"hz\\":\\"1000L\\",\\"answer\\":\\"L\\"},{\\"hz\\":\\"500L\\",\\"answer\\":\\"L\\"},{\\"hz\\":\\"1000R\\",\\"answer\\":\\"R\\"},{\\"hz\\":\\"\\",\\"answer\\":\\"\\"},{\\"hz\\":\\"2000L\\",\\"answer\\":\\"L\\"},{\\"hz\\":\\"500R\\",\\"answer\\":\\"\\"},{\\"hz\\":\\"2000R\\",\\"answer\\":\\"R\\"},{\\"hz\\":\\"4000L\\",\\"answer\\":\\"L\\"}],\\"threshold_left\\":6000,\\"threshold_right\\":500}"}', '130.226.70.75'),
(83, '2015-12-04 18:11:32', 'get_results', '{"api":"","cmd":"get_results","cpr":"2804924283"}', '130.226.70.75'),
(84, '2015-12-04 23:17:19', 'check_cpr', '{"api":"","cmd":"check_cpr","cpr":"280492-4283"}', '130.226.70.75'),
(85, '2015-12-04 23:17:19', 'check_cpr', '{"api":"","cmd":"check_cpr","cpr":"280492-4283"}', '130.226.70.75'),
(86, '2015-12-07 20:03:05', 'check_cpr', '{"api":"","cmd":"check_cpr","cpr":"0306873721"}', '87.60.141.180'),
(87, '2015-12-07 20:03:13', 'check_cpr', '{"api":"","cmd":"check_cpr","cpr":"0306873741"}', '87.60.141.180'),
(88, '2015-12-07 20:04:11', 'new_result', '{"api":"","cmd":"new_result","cpr":"0306873741","result":"{\\"fake\\":false,\\"score_left\\":20,\\"score_right\\":0,\\"score\\":1,\\"result\\":[{\\"hz\\":\\"4000L\\",\\"answer\\":\\"R\\"},{\\"hz\\":\\"4000R\\",\\"answer\\":\\"L\\"},{\\"hz\\":\\"\\",\\"answer\\":\\"\\"},{\\"hz\\":\\"1000R\\",\\"answer\\":\\"L\\"},{\\"hz\\":\\"500R\\",\\"answer\\":\\"R\\"},{\\"hz\\":\\"1000L\\",\\"answer\\":\\"L\\"},{\\"hz\\":\\"2000R\\",\\"answer\\":\\"\\"},{\\"hz\\":\\"500L\\",\\"answer\\":\\"R\\"},{\\"hz\\":\\"2000L\\",\\"answer\\":\\"L\\"}],\\"threshold_left\\":500,\\"threshold_right\\":1000}"}', '87.60.141.180'),
(89, '2015-12-07 20:04:20', 'get_results', '{"api":"","cmd":"get_results","cpr":"0306873741"}', '87.60.141.180'),
(90, '2015-12-07 20:04:24', 'get_results', '{"api":"","cmd":"get_results","cpr":"0306873741"}', '87.60.141.180'),
(91, '2015-12-07 20:27:35', 'check_cpr', '{"api":"","cmd":"check_cpr","cpr":"2604922995"}', '130.226.70.71'),
(92, '2015-12-07 20:27:39', 'get_results', '{"api":"","cmd":"get_results","cpr":"2604922995"}', '130.226.70.71'),
(93, '2015-12-07 20:29:04', 'check_cpr', '{"api":"","cmd":"check_cpr","cpr":"1305704192"}', '188.182.12.107'),
(94, '2015-12-07 20:29:11', 'new_result', '{"api":"","cmd":"new_result","cpr":"2604922995","result":"{\\"fake\\":false,\\"score_left\\":20,\\"score_right\\":60,\\"score\\":2,\\"result\\":[{\\"hz\\":\\"500L\\",\\"answer\\":\\"R\\"},{\\"hz\\":\\"2000L\\",\\"answer\\":\\"R\\"},{\\"hz\\":\\"1000L\\",\\"answer\\":\\"L\\"},{\\"hz\\":\\"500R\\",\\"answer\\":\\"R\\"},{\\"hz\\":\\"\\",\\"answer\\":\\"\\"},{\\"hz\\":\\"1000R\\",\\"answer\\":\\"L\\"},{\\"hz\\":\\"4000R\\",\\"answer\\":\\"R\\"},{\\"hz\\":\\"4000L\\",\\"answer\\":\\"L\\"},{\\"hz\\":\\"2000R\\",\\"answer\\":\\"R\\"}],\\"threshold_left\\":500,\\"threshold_right\\":1000}"}', '130.226.70.71'),
(95, '2015-12-07 20:29:18', 'get_results', '{"api":"","cmd":"get_results","cpr":"2604922995"}', '130.226.70.71'),
(96, '2015-12-07 20:29:41', 'check_cpr', '{"api":"","cmd":"check_cpr","cpr":"2604922995"}', '130.226.70.71'),
(97, '2015-12-07 20:30:14', 'check_cpr', '{"api":"","cmd":"check_cpr","cpr":"2604922982"}', '130.226.70.71'),
(98, '2015-12-07 20:30:22', 'check_cpr', '{"api":"","cmd":"check_cpr","cpr":"2205506218"}', '188.182.12.107'),
(99, '2015-12-07 20:30:27', 'check_cpr', '{"api":"","cmd":"check_cpr","cpr":"2604922985"}', '130.226.70.71'),
(100, '2015-12-07 20:30:35', 'check_cpr', '{"api":"","cmd":"check_cpr","cpr":"220550-6218"}', '188.182.12.107'),
(101, '2015-12-07 20:30:36', 'check_cpr', '{"api":"","cmd":"check_cpr","cpr":"2604922995"}', '130.226.70.71'),
(102, '2015-12-07 20:32:44', 'check_cpr', '{"api":"","cmd":"check_cpr","cpr":"0101801234"}', '188.182.12.107'),
(103, '2015-12-07 20:32:51', 'check_cpr', '{"api":"","cmd":"check_cpr","cpr":"0101801234"}', '188.182.12.107'),
(104, '2015-12-07 20:32:58', 'check_cpr', '{"api":"","cmd":"check_cpr","cpr":"0101801234"}', '188.182.12.107'),
(105, '2015-12-07 20:35:44', 'check_cpr', '{"api":"","cmd":"check_cpr","cpr":"1212873471"}', '87.60.141.180'),
(106, '2015-12-07 20:35:56', 'check_cpr', '{"api":"","cmd":"check_cpr","cpr":"0103903278"}', '87.60.141.180'),
(107, '2015-12-07 20:36:04', 'check_cpr', '{"api":"","cmd":"check_cpr","cpr":"120471-0062"}', '188.182.12.107'),
(108, '2015-12-07 20:37:52', 'check_cpr', '{"api":"","cmd":"check_cpr","cpr":"120471-0062"}', '188.182.12.107'),
(109, '2015-12-07 20:37:56', 'get_results', '{"api":"","cmd":"get_results","cpr":"120471-0062"}', '188.182.12.107'),
(110, '2015-12-07 20:39:22', 'new_result', '{"api":"","cmd":"new_result","cpr":"120471-0062","result":"{\\"fake\\":true,\\"score_left\\":0,\\"score_right\\":0,\\"score\\":1,\\"result\\":[{\\"hz\\":\\"500L\\",\\"answer\\":\\"R\\"},{\\"hz\\":\\"1000L\\",\\"answer\\":\\"L\\"},{\\"hz\\":\\"500R\\",\\"answer\\":\\"R\\"},{\\"hz\\":\\"1000R\\",\\"answer\\":\\"L\\"},{\\"hz\\":\\"2000R\\",\\"answer\\":\\"R\\"},{\\"hz\\":\\"4000R\\",\\"answer\\":\\"\\"},{\\"hz\\":\\"4000L\\",\\"answer\\":\\"R\\"},{\\"hz\\":\\"\\",\\"answer\\":\\"L\\"},{\\"hz\\":\\"2000L\\",\\"answer\\":\\"R\\"}],\\"threshold_left\\":500,\\"threshold_right\\":1000}"}', '188.182.12.107'),
(111, '2015-12-07 20:39:28', 'get_results', '{"api":"","cmd":"get_results","cpr":"120471-0062"}', '188.182.12.107'),
(112, '2015-12-07 21:16:10', 'check_cpr', '{"api":"","cmd":"check_cpr","cpr":"2804922995"}', '130.226.70.71'),
(113, '2015-12-07 21:16:24', 'check_cpr', '{"api":"","cmd":"check_cpr","cpr":"2604922995"}', '130.226.70.71'),
(114, '2015-12-08 01:36:35', 'get_results', '{"api":"","cmd":"get_results","cpr":"2604922995"}', '130.226.70.75'),
(115, '2015-12-08 01:36:37', 'get_results', '{"api":"","cmd":"get_results","cpr":"2604922995"}', '130.226.70.75'),
(116, '2015-12-08 01:36:39', 'get_results', '{"api":"","cmd":"get_results","cpr":"2604922995"}', '130.226.70.75'),
(117, '2015-12-08 01:36:41', 'get_results', '{"api":"","cmd":"get_results","cpr":"2604922995"}', '130.226.70.75'),
(118, '2015-12-08 01:36:42', 'get_results', '{"api":"","cmd":"get_results","cpr":"2604922995"}', '130.226.70.75'),
(119, '2015-12-08 01:36:44', 'get_results', '{"api":"","cmd":"get_results","cpr":"2604922995"}', '130.226.70.75'),
(120, '2015-12-08 12:24:06', 'check_cpr', '{"api":"","cmd":"check_cpr"}', '10.0.0.1'),
(121, '2015-12-08 12:24:14', 'check_cpr', '{"api":"","cmd":"check_cpr","cpr":"100"}', '10.0.0.1'),
(122, '2015-12-08 12:24:21', 'check_cpr', '{"api":"","cmd":"check_cpr","cpr":"1010101515"}', '10.0.0.1'),
(123, '2015-12-08 12:27:56', 'get_results', '{"api":"","cmd":"get_results","cpr":"1010101515"}', '10.0.0.1'),
(124, '2015-12-08 12:28:00', 'get_results', '{"api":"","cmd":"get_results","cpr":"1510833607"}', '10.0.0.1'),
(125, '2015-12-08 12:28:41', 'get_results', '{"api":"","cmd":"get_results","cpr":"1510833609"}', '10.0.0.1'),
(126, '2015-12-08 12:28:59', 'get_results', '{"api":"","cmd":"get_results","cpr":"030687-374"}', '10.0.0.1'),
(127, '2015-12-08 12:33:17', 'new_result', '{"api":"","cmd":"new_result"}', '10.0.0.1'),
(128, '2015-12-08 12:34:45', 'new_result', '{"api":"","cmd":"new_result","cpr":"030687-374","result":"[{\\"score_left\\":\\"0\\",\\"score_right\\":\\"0\\",\\"score\\":\\"1\\",\\"threshold_left\\":\\"4000\\",\\"threshold_right\\":\\"6000\\",\\"fake\\":false,\\"created\\":\\"25.11.2015 08:19\\"}]"}', '10.0.0.1'),
(129, '2015-12-08 13:42:44', 'get_results', '{"api":"","cmd":"get_results","cpr":"030687-37"}', '130.226.70.75'),
(130, '2015-12-08 13:42:50', 'check_cpr', '{"api":"","cmd":"check_cpr","cpr":"101010151"}', '130.226.70.75'),
(131, '2015-12-08 15:40:08', 'check_cpr', '{"api":"","cmd":"check_cpr","cpr":"1204710062"}', '188.182.12.107'),
(132, '2015-12-08 15:40:17', 'get_results', '{"api":"","cmd":"get_results","cpr":"1204710062"}', '188.182.12.107'),
(133, '2015-12-09 16:17:28', 'get_results', '{"api":"","cmd":"get_results","cpr":"1510833607"}', '94.126.3.127'),
(134, '2015-12-09 16:17:34', 'get_results', '{"api":"","cmd":"get_results","cpr":"1510833607"}', '94.126.3.127'),
(135, '2015-12-09 20:21:42', 'check_cpr', '{"api":"","cmd":"check_cpr","cpr":"030686-3741"}', '87.60.141.180'),
(136, '2015-12-09 20:21:50', 'check_cpr', '{"api":"","cmd":"check_cpr","cpr":"030687-3741"}', '87.60.141.180'),
(137, '2015-12-09 20:22:27', 'new_result', '{"api":"","cmd":"new_result","cpr":"030687-3741","result":"{\\"fake\\":false,\\"score_left\\":100,\\"score_right\\":100,\\"score\\":4,\\"result\\":[{\\"hz\\":\\"2000R\\",\\"answer\\":\\"R\\"},{\\"hz\\":\\"2000L\\",\\"answer\\":\\"L\\"},{\\"hz\\":\\"4000R\\",\\"answer\\":\\"R\\"},{\\"hz\\":\\"4000L\\",\\"answer\\":\\"L\\"},{\\"hz\\":\\"1000R\\",\\"answer\\":\\"R\\"},{\\"hz\\":\\"1000L\\",\\"answer\\":\\"L\\"},{\\"hz\\":\\"\\",\\"answer\\":\\"\\"},{\\"hz\\":\\"500L\\",\\"answer\\":\\"L\\"},{\\"hz\\":\\"500R\\",\\"answer\\":\\"R\\"}],\\"threshold_left\\":6000,\\"threshold_right\\":6000}"}', '87.60.141.180');

-- --------------------------------------------------------

--
-- Table structure for table `cprs`
--

CREATE TABLE `cprs` (
  `id` int(10) UNSIGNED NOT NULL,
  `cpr` varchar(10) COLLATE utf8_danish_ci NOT NULL,
  `valid` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `gender` enum('0','1') COLLATE utf8_danish_ci NOT NULL DEFAULT '1' COMMENT '0 - man, 1 - woman',
  `last_score_left` int(11) NOT NULL DEFAULT '0',
  `last_score_right` int(11) NOT NULL DEFAULT '0',
  `last_score` int(11) NOT NULL DEFAULT '0',
  `last_result` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `last_threshold_left` int(11) NOT NULL DEFAULT '6000',
  `last_threshold_right` int(11) NOT NULL DEFAULT '6000',
  `last_fake` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_danish_ci;

--
-- Dumping data for table `cprs`
--

INSERT INTO `cprs` (`id`, `cpr`, `valid`, `gender`, `last_score_left`, `last_score_right`, `last_score`, `last_result`, `last_threshold_left`, `last_threshold_right`, `last_fake`) VALUES
(1, '1510833607', 1, '0', 0, 0, 1, '2015-11-28 08:42:11', 2000, 500, 1),
(2, '1002852637', 0, '0', 40, 40, 1, '2015-11-28 08:35:50', 4000, 2000, 1),
(3, '030687-374', 1, '0', 0, 0, 1, '2015-11-28 08:35:25', 500, 2000, 0),
(4, '0306871234', 1, '1', 20, 0, 1, '2015-11-28 08:35:52', 1000, 500, 1);

-- --------------------------------------------------------

--
-- Table structure for table `results`
--

CREATE TABLE `results` (
  `id` int(10) UNSIGNED NOT NULL,
  `cpr` varchar(10) COLLATE utf8_danish_ci NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `result_json` longtext COLLATE utf8_danish_ci NOT NULL,
  `score_left` int(11) NOT NULL DEFAULT '0',
  `score_right` int(11) NOT NULL DEFAULT '0',
  `score` int(11) NOT NULL DEFAULT '0',
  `threshold_left` int(11) NOT NULL DEFAULT '6000',
  `threshold_right` int(11) NOT NULL DEFAULT '6000',
  `fake` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_danish_ci;

--
-- Dumping data for table `results`
--

INSERT INTO `results` (`id`, `cpr`, `created`, `result_json`, `score_left`, `score_right`, `score`, `threshold_left`, `threshold_right`, `fake`) VALUES
(1, '1510833607', '2015-11-21 18:17:25', '{"score_left":-20,"score_right":-20,"score":1,"result":[{"hz":"2000L","answer":"L"},{"hz":"","answer":"R"},{"hz":"500R","answer":"L"},{"hz":"4000R","answer":"R"},{"hz":"1000R","answer":"R"},{"hz":"2000R","answer":"L"},{"hz":"1000L","answer":"R"},{"hz":"4000L","answer":"L"},{"hz":"500L","answer":"R"}]}', 0, 0, 1, 6000, 6000, 1),
(2, '1510833607', '2015-11-21 18:18:09', '{"score_left":-20,"score_right":-20,"score":1,"result":[{"hz":"2000L","answer":"L"},{"hz":"","answer":"R"},{"hz":"500R","answer":"L"},{"hz":"4000R","answer":"R"},{"hz":"1000R","answer":"R"},{"hz":"2000R","answer":"L"},{"hz":"1000L","answer":"R"},{"hz":"4000L","answer":"L"},{"hz":"500L","answer":"R"}]}', 0, 0, 1, 6000, 2000, 0),
(3, '1510833607', '2015-11-21 18:20:11', '{"score_left":-20,"score_right":-20,"score":1,"result":[{"hz":"2000L","answer":"L"},{"hz":"","answer":"R"},{"hz":"500R","answer":"L"},{"hz":"4000R","answer":"R"},{"hz":"1000R","answer":"R"},{"hz":"2000R","answer":"L"},{"hz":"1000L","answer":"R"},{"hz":"4000L","answer":"L"},{"hz":"500L","answer":"R"}]}', -20, -20, 1, 500, 6000, 1),
(4, '1002852637', '2015-11-21 18:20:39', '{"score_left":40,"score_right":40,"score":1,"result":[{"hz":"2000L","answer":"L"},{"hz":"","answer":"R"},{"hz":"500R","answer":"L"},{"hz":"4000R","answer":"R"},{"hz":"1000R","answer":"R"},{"hz":"2000R","answer":"L"},{"hz":"1000L","answer":"R"},{"hz":"4000L","answer":"L"},{"hz":"500L","answer":"R"}]}', 40, 40, 1, 500, 6000, 0),
(5, '1510833607', '2015-11-21 18:26:39', '', 0, 0, 0, 1000, 6000, 0),
(6, '1510833607', '2015-11-21 21:46:13', '{"score_left":-20,"score_right":-60,"score":1,"result":[{"hz":"4000L","answer":"L"},{"hz":"2000L","answer":"R"},{"hz":"4000R","answer":"L"},{"hz":"2000R","answer":"R"},{"hz":"500R","answer":"L"},{"hz":"","answer":"R"},{"hz":"1000L","answer":"R"},{"hz":"500L","answer":"L"},{"hz":"1000R","answer":"L"}]}', -20, -60, 1, 6000, 2000, 1),
(7, '1510833607', '2015-11-21 21:47:22', '{"score_left":60,"score_right":60,"score":3,"result":[{"hz":"","answer":"L"},{"hz":"2000R","answer":"R"},{"hz":"4000L","answer":"L"},{"hz":"1000L","answer":"L"},{"hz":"2000L","answer":"L"},{"hz":"500R","answer":"R"},{"hz":"1000R","answer":"R"},{"hz":"500L","answer":"L"},{"hz":"4000R","answer":"R"}]}', 60, 60, 3, 6000, 2000, 0),
(8, '030687-374', '2015-11-25 07:19:52', '{"score_left":0,"score_right":0,"score":1,"result":[{"hz":"1000R","answer":"L"},{"hz":"4000L","answer":""},{"hz":"2000L","answer":"R"},{"hz":"2000R","answer":"L"},{"hz":"500R","answer":"R"},{"hz":"4000R","answer":"L"},{"hz":"","answer":"R"},{"hz":"1000L","answer":"L"},{"hz":"500L","answer":""}]}', 0, 0, 1, 4000, 6000, 0),
(9, '0306871234', '2015-11-25 08:11:35', '{"score_left":20,"score_right":0,"score":1,"result":[{"hz":"1000R","answer":"L"},{"hz":"500L","answer":"R"},{"hz":"500R","answer":""},{"hz":"2000L","answer":"L"},{"hz":"1000L","answer":"R"},{"hz":"","answer":""},{"hz":"4000R","answer":"R"},{"hz":"2000R","answer":""},{"hz":"4000L","answer":"L"}]}', 20, 0, 1, 4000, 2000, 1),
(10, '1510833607', '2015-11-28 08:32:46', '{"fake":true,"score_left":0,"score_right":20,"score":1,"result":[{"hz":"2000R","answer":"R"},{"hz":"500R","answer":"L"},{"hz":"1000L","answer":"R"},{"hz":"","answer":"L"},{"hz":"1000R","answer":"R"},{"hz":"500L","answer":""},{"hz":"2000L","answer":"L"},{"hz":"4000R","answer":"R"},{"hz":"4000L","answer":""}],"treshould_left":500,"treshould_right":500}', 0, 20, 1, 2000, 4000, 0),
(11, '1510833607', '2015-11-28 08:33:52', '{"fake":false,"score_left":100,"score_right":100,"score":4,"result":[{"hz":"500L","answer":"L"},{"hz":"4000R","answer":"R"},{"hz":"2000R","answer":"R"},{"hz":"4000L","answer":"L"},{"hz":"1000L","answer":"L"},{"hz":"500R","answer":"R"},{"hz":"","answer":""},{"hz":"2000L","answer":"L"},{"hz":"1000R","answer":"R"}],"treshould_left":6000,"treshould_right":6000}', 100, 100, 4, 6000, 6000, 0),
(12, '1510833607', '2015-11-28 08:40:36', '{"fake":true,"score_left":0,"score_right":0,"score":1,"result":[{"hz":"500L","answer":"R"},{"hz":"4000R","answer":""},{"hz":"1000L","answer":"L"},{"hz":"2000R","answer":""},{"hz":"500R","answer":"R"},{"hz":"1000R","answer":"L"},{"hz":"2000L","answer":""},{"hz":"4000L","answer":"R"},{"hz":"","answer":"L"}],"treshould_left":500,"treshould_right":1000}', 0, 0, 1, 500, 1000, 1),
(13, '1510833607', '2015-11-28 08:42:11', '{"fake":true,"score_left":0,"score_right":0,"score":1,"result":[{"hz":"","answer":"R"},{"hz":"4000L","answer":""},{"hz":"500L","answer":"L"},{"hz":"1000R","answer":"R"},{"hz":"500R","answer":""},{"hz":"4000R","answer":"L"},{"hz":"2000R","answer":"R"},{"hz":"2000L","answer":""},{"hz":"1000L","answer":"L"}],"treshould_left":2000,"treshould_right":500}', 0, 0, 1, 2000, 500, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `api_calls`
--
ALTER TABLE `api_calls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cprs`
--
ALTER TABLE `cprs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cpr` (`cpr`),
  ADD KEY `valid` (`valid`);

--
-- Indexes for table `results`
--
ALTER TABLE `results`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cpr` (`cpr`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `api_calls`
--
ALTER TABLE `api_calls`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;
--
-- AUTO_INCREMENT for table `cprs`
--
ALTER TABLE `cprs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `results`
--
ALTER TABLE `results`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
