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