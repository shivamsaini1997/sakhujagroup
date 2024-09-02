-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 02, 2024 at 07:02 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sakhujagroup`
--

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `blog_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `blog_image` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `blog_detail` longtext NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`blog_id`, `category_id`, `blog_image`, `title`, `slug`, `blog_detail`, `status`, `created_at`, `updated_at`) VALUES
(6, 4, 'public/upload/blog/7m28YIUOX6vaS17WwNiQFkBCroUcUK58vJzIayig.jpg', 'It is a long established fact that a reader', 'it-is-a-long-established-fact-that-a-reader', '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\"><b style=\"font-family: DauphinPlain; font-size: 24px; text-align: left;\">Why do we use it?</b><br></p><div><br></div><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p><div><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</span><br></div>', 1, '2024-08-29 23:41:04', '2024-08-29 23:41:04'),
(13, 7, 'public/upload/blog/4mGQxiyQ4mA8ki53FLqZc40HdjEGg4VLHYCkZygE.jpg', '1914 translation by H. Rackham', '1914-translation-by-h.-rackham', '<p>\"On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.\"<br></p>', 1, '2024-08-30 00:04:12', '2024-08-30 00:04:12'),
(14, 7, 'public/upload/blog/dx2Exv6uVSdg2n1euaBhGz4OWdQX1L5i7LJDI76c.jpg', 'Top 10 Digital Marketing Strategies For Travel Agencies In India', 'top-10-digital-marketing-strategies-for-travel-agencies-in-india', '<h2 id=\"1.-search-engine-optimization-(seo)\" style=\"font-weight: 700; color: rgb(51, 51, 51); font-family: Barlow, sans-serif;\">1. Search Engine Optimization (SEO)</h2><p style=\"margin-bottom: 15px; line-height: 1.6; color: rgb(105, 102, 135); font-family: Nunito, sans-serif;\"><a href=\"https://www.cotginanalytics.in/seo-company-in-noida/\" style=\"color: rgb(94, 168, 19); transition: 0.5s;\">SEO</a>&nbsp;is a crucial component of digital media advertising strategies that improve a travel agency\'s online presence. Travellers looking for travel services might naturally find your website by optimizing it for search engines. Pay attention to keywords associated with travel packages, prominent destinations in India, and pertinent search terms. Your site\'s position on search engines like Google will increase if you use off-page SEO (creating backlinks from reputable travel websites) and on-page SEO (using relevant keywords in titles, meta descriptions, and content).</p><h2 id=\"2.-content-marketing\" style=\"font-weight: 700; color: rgb(51, 51, 51); font-family: Barlow, sans-serif;\">2. Content Marketing</h2><p style=\"margin-bottom: 15px; line-height: 1.6; color: rgb(105, 102, 135); font-family: Nunito, sans-serif;\">To engage potential customers and establish a travel brand\'s authority, content marketing is essential. Provide interesting and educational content, such as blog entries, travel manuals, and articles, that highlight various locations, advice for travellers, and itinerary ideas. Share travelogues to motivate and inspire other travellers. Users who find your content interesting can share it on digital media, which will improve exposure and enhance website traffic.</p><h2 id=\"3.-social-media-marketing\" style=\"font-weight: 700; color: rgb(51, 51, 51); font-family: Barlow, sans-serif;\">3. Social Media Marketing</h2><p style=\"margin-bottom: 15px; line-height: 1.6; color: rgb(105, 102, 135); font-family: Nunito, sans-serif;\">Travel companies find that digital media sites like Facebook, Instagram, and Twitter are good for connecting with consumers. Share visually pleasing data on these sites, such as behind-the-scenes looks at your company\'s activities, user testimonials, and pictures and videos of popular travel places. Organize focused advertising campaigns to please particular people, like honeymooners or young travellers. To develop a hard-core following, interact with your users through polls, contests, and interactive postings.</p><h2 id=\"4.-influencer-marketing\" style=\"font-weight: 700; color: rgb(51, 51, 51); font-family: Barlow, sans-serif;\">4. Influencer Marketing</h2><p style=\"margin-bottom: 15px; line-height: 1.6; color: rgb(105, 102, 135); font-family: Nunito, sans-serif;\">Travel companies can effectively grow their users by using influencer marketing as an important strategy. Collaborate with bloggers and travel influencers who are widely known in the travel industry and have a huge fan base. Work together to create sponsored content, such as blogs, Instagram posts, and tour vlogs. Influencers can provide sincere evaluations of your travel offers, and help in the creating of reputation and trust among prospective customers.</p><h3 id=\"5.-pay-per-click-(ppc)-advertising\" style=\"font-weight: 600; color: rgb(51, 51, 51); font-family: Barlow, sans-serif;\">5. Pay-Per-Click (PPC) Advertising</h3><p style=\"margin-bottom: 15px; line-height: 1.6; color: rgb(105, 102, 135); font-family: Nunito, sans-serif;\">A less expensive way to quickly attract organic traffic to your website is through&nbsp;<a href=\"https://www.cotginanalytics.in/ppc-company-in-noida/\" style=\"color: rgb(94, 168, 19); transition: 0.5s;\">PPC marketing</a>. Target particular tour-related keywords with Google AdWords, such as \"cheapest tour packages\" or \"top travel company in India.\" With PPC campaigns, you can bid and target your budget for the ad, guaranteeing that users who are actively looking for tourism services will see your adverts. In order to gain ROI, track and refine your efforts.</p><h2 id=\"6.-email-marketing\" style=\"font-weight: 700; color: rgb(51, 51, 51); font-family: Barlow, sans-serif;\">6. Email Marketing</h2><p style=\"margin-bottom: 15px; line-height: 1.6; color: rgb(105, 102, 135); font-family: Nunito, sans-serif;\">One of the most effective ways to grow prospects and convert them into consumers is still by email marketing. Collect email addresses through events, social media, and your website. Give your users tailored and pertinent material, such as vacation packages, newsletters, and tour discounts. Send follow-up emails via automation to prospective customers who have shown interest in your services but have not yet created a reservation. Since a large population accesses emails on smartphones, make sure your emails are hassle-free on mobile devices.</p><h2 id=\"7.-video-marketing\" style=\"font-weight: 700; color: rgb(51, 51, 51); font-family: Barlow, sans-serif;\">7. Video Marketing</h2><p style=\"margin-bottom: 15px; line-height: 1.6; color: rgb(105, 102, 135); font-family: Nunito, sans-serif;\">A compelling method of showcasing travel places and experiences is through video marketing. Make excellent videos that showcase vacation destinations, client endorsements, and advice for travellers. Distribute these videos on Facebook, Instagram, and YouTube. Utilize live video capabilities to give a behind-the-scenes peek at your travel business, answer inquiries about travel, and lead virtual tours of well-liked places. In order to draw in potential customers, advertising efforts might also include videos.</p><h2 id=\"8.-mobile-marketing\" style=\"font-weight: 700; color: rgb(51, 51, 51); font-family: Barlow, sans-serif;\">8. Mobile Marketing</h2><p style=\"margin-bottom: 15px; line-height: 1.6; color: rgb(105, 102, 135); font-family: Nunito, sans-serif;\">Mobile marketing is important for tourism agencies since more and more people are utilizing their smartphones to reserve their travel packages. Make sure your website loads rapidly and is optimized for mobile devices. Build a smartphone application that makes users browse and reserve tour packages, as well as get offer notifications. Send customers information, reminders, and targeted travel offers using SMS marketing. Creating a connection with tourists who are always on the journey is made easier with mobile marketing.</p><h2 id=\"9.-local-seo\" style=\"font-weight: 700; color: rgb(51, 51, 51); font-family: Barlow, sans-serif;\">9. Local SEO</h2><p style=\"margin-bottom: 15px; line-height: 1.6; color: rgb(105, 102, 135); font-family: Nunito, sans-serif;\">For travel agencies focusing on particular areas, local search engine optimization is important. Incorporate specific keywords into your website\'s optimization, such as \"tour company in Delhi\" or \"Goa travel packages.\" Create a Google My Business profile for your agency and fill it out with the right details such as your residence address, mobile number, and working hours. Urge customers to give good Google reviews so that your rank can be improved in local searches and bring in additional business from the nearby population.</p><h2 id=\"10.-customer-relationship-management-(crm)-and-analytics\" style=\"font-weight: 700; color: rgb(51, 51, 51); font-family: Barlow, sans-serif;\">10. Customer Relationship Management (CRM) and Analytics</h2><p style=\"margin-bottom: 15px; line-height: 1.6; color: rgb(105, 102, 135); font-family: Nunito, sans-serif;\">Travel companies can manage user relationships and improve consumer satisfaction by using&nbsp;<a href=\"https://cotgincrm.com/\" style=\"color: rgb(94, 168, 19); transition: 0.5s;\">CRM software</a>. Track consumer interactions, preferences, and feedback with CRM. finding the travel interests of your clients by analyzing their information and adjusting your marketing tactics accordingly. Check the effectiveness of your social media marketing campaigns utilizing analytics tools to measure social media interaction, website interaction, and conversion rates. Make the most of these insights to improve ROI and optimize your tactics.</p><h2 id=\"conclusion\" style=\"font-weight: 700; color: rgb(51, 51, 51); font-family: Barlow, sans-serif;\">Conclusion</h2><p style=\"margin-bottom: 15px; line-height: 1.6; color: rgb(105, 102, 135); font-family: Nunito, sans-serif;\">The online visibility and financial success of travel firms in India may be greatly increased by implementing these digital marketing techniques. Reaching and interacting with potential passengers is largely dependent on each method, which ranges from search engine optimization for your website to using influencer marketing and social media. Travel agencies may grow their clientele, establish a solid brand identity, and prosper in the cutthroat travel market by using these digital marketing strategies.</p>', 1, '2024-08-30 00:52:57', '2024-08-30 00:52:57'),
(15, 4, 'public/upload/blog/MXCSMtKkmUogCgNcNCVtUWVXqkeF9wkuaAJYUCwg.jpg', 'How To Increase Website Authority', 'how-to-increase-website-authority', '<p style=\"margin-bottom: 15px; line-height: 1.6; color: rgb(105, 102, 135); font-family: Nunito, sans-serif;\">Website authority is a very common term used in the world of the digital marketing industry. This term refers to the strength of your website, its influence, its SEO performance, and its reputation in the eyes of various search engines like Google. Website authority gives you an idea of the ranking your website will get in the search results.</p><p style=\"margin-bottom: 15px; line-height: 1.6; color: rgb(105, 102, 135); font-family: Nunito, sans-serif;\">Search engines give a higher rank to more trusted, valuable, and reliable websites. The higher your website authority; the higher your rank in search results ultimately driving more traffic to your website leading to success and growth in your business. You can improve your visibility and running by increasing your website authority.</p><p style=\"margin-bottom: 15px; line-height: 1.6; color: rgb(105, 102, 135); font-family: Nunito, sans-serif;\">Here is a guide to boosting your website authority-</p><h2 id=\"create-high-quality-content\" style=\"font-weight: 700; color: rgb(51, 51, 51); font-family: Barlow, sans-serif;\">Create High-Quality Content</h2><p style=\"margin-bottom: 15px; line-height: 1.6; color: rgb(105, 102, 135); font-family: Nunito, sans-serif;\">It is important to write and create&nbsp;<a href=\"https://www.cotginanalytics.in/blog/how-to-write-high-quality-content/\" style=\"color: rgb(94, 168, 19); transition: 0.5s;\">high-quality content</a>&nbsp;that makes a website stand out. Based on your content quality you attract visitors to your website and make them your potential customers. Utilize SEO to create engaging content to boost your website authority. Check the relevancy of the content, write keywords, and connect directly with the topic in which your audience is interested. Make your that your content is informative and provides valuable knowledge. Ensure that your content on the website is well-written and has no grammatical errors or spelling mistakes. Write content that is easy to read and understand. High-quality content engages more audience and also encourages other websites to yours helping you with backlinks as well and ultimately increasing your website authority.</p><h2 id=\"get-quality-backlinks\" style=\"font-weight: 700; color: rgb(51, 51, 51); font-family: Barlow, sans-serif;\">Get quality backlinks</h2><p style=\"margin-bottom: 15px; line-height: 1.6; color: rgb(105, 102, 135); font-family: Nunito, sans-serif;\">Backlinks are the links generated on another website that direct to your website. If you have more backlinks that is proof that your website has relevant and valuable content and it also tells search engines like Google that your site is trustworthy and authoritative. You can increase your website authority by having high-quality backlinks. You can build backlinks by guest blogging that refer to other articles for other websites in your industry. Usually, companies allow you to add your content link in between their content in return, getting you backlinks and driving organic traffic to your website. &nbsp;It is important to create link-worthy content that has good infographics, and research reports. Reaching out and collaborating with content creators will also help you generate website authority. If you have created good quality content you should immediately contact the influencer industry and ask the content creator to share your website\'s link.</p><h2 id=\"optimize-your-on-page-content\" style=\"font-weight: 700; color: rgb(51, 51, 51); font-family: Barlow, sans-serif;\">Optimize your On-page content</h2><p style=\"margin-bottom: 15px; line-height: 1.6; color: rgb(105, 102, 135); font-family: Nunito, sans-serif;\">If you optimize every page on your website with the help of&nbsp;<a href=\"https://www.cotginanalytics.in/seo-company-in-noida/\" style=\"color: rgb(94, 168, 19); transition: 0.5s;\">SEO</a>&nbsp;to improve your search engine ranking, you can increase your website authority. Make sure that your content is optimized properly on each page so that it becomes easy for search engines like Google to understand what your website is about and rank your pages and the site higher. To optimize your on=page content, use relevant and optimized keywords in your content on the website. Use optimized keywords, titles, and descriptions to create high-quality content and engage a large amount of audience on your website, as these are the first things noticed by any reader. You can also use internal linking to increase your website authority in digital marketing.</p><h2 id=\"work-on-ui/ux\" style=\"font-weight: 700; color: rgb(51, 51, 51); font-family: Barlow, sans-serif;\">Work on UI/UX</h2><p style=\"margin-bottom: 15px; line-height: 1.6; color: rgb(105, 102, 135); font-family: Nunito, sans-serif;\">Improving your UI (User Interface) means improving the web development quality or looks of your web pages. This attracts more visitors to your website and improves audience engagement. If your UX (user\'s experience) is good, search engines like Google will consider your website trustworthy and rank it higher. You should always check the loading speed, and site navigation so that your ranking is not affected by the slow load speed. Make your site mobile-friendly, as most people operate mobile phones for making any kind of search. So your site should be easily accessible and work on small devices like mobiles and tablets along with laptops. If your site\'s loading speed is low then it may frustrate your users and they might leave the site and never come back affecting your website authority. &nbsp;</p><h2 id=\"enhance-online-visibility\" style=\"font-weight: 700; color: rgb(51, 51, 51); font-family: Barlow, sans-serif;\">Enhance online visibility</h2><p style=\"margin-bottom: 15px; line-height: 1.6; color: rgb(105, 102, 135); font-family: Nunito, sans-serif;\">It is very important to build your social media presence. If your social media handle works well and engages more people you can attach your website link to your pots, reels, and stories to direct the users to your website to make a purchase of your products and services. Always take care of regular posting on your account at the scheduled time. Share posts, blogs, videos, articles, and other content regularly to attract more people by creating engaging content. This will drive organic traffic to your website. Engage with your audience by responding to their comments, questions, and questions to build healthy relationships with your customers. This will establish trust and loyalty in your potential audience towards your brand. Collaborate with influencers on social media and ask them to share your content online, this will spread awareness and generate traffic towards your website. &nbsp;Use SEO to optimize your social media content.</p><h2 id=\"update-your-content-regularly\" style=\"font-weight: 700; color: rgb(51, 51, 51); font-family: Barlow, sans-serif;\">Update your content regularly</h2><p style=\"margin-bottom: 15px; line-height: 1.6; color: rgb(105, 102, 135); font-family: Nunito, sans-serif;\">If your website’s content is regularly updated, your website will be ranked higher by search engines like Google, as they favour the websites that post fresh content and update it. Adding new content to your website consistently and updating the existing content makes your content relevant and valuable and allows search engines to rank your site higher on search results. Update your old blogs and articles with new and updated content that is up to date and has correct information according to the current time. &nbsp;</p><h2 id=\"conclusion\" style=\"font-weight: 700; color: rgb(51, 51, 51); font-family: Barlow, sans-serif;\">Conclusion</h2><p style=\"margin-bottom: 15px; line-height: 1.6; color: rgb(105, 102, 135); font-family: Nunito, sans-serif;\">It is very easy to have website authority in the&nbsp;<a href=\"https://www.cotginanalytics.in/digital-marketing-company-in-noida/\" style=\"color: rgb(94, 168, 19); transition: 0.5s;\">digital marketing</a>&nbsp;industry, especially with the use of SEO. It takes time and effort, to follow the steps to boost website authority. All you need to do is, create high-quality content, and enhance your online visibility and post on social media, regularly update your content on the website, improve user experience and user interface.</p>', 1, '2024-08-30 00:53:57', '2024-08-30 00:55:57');

-- --------------------------------------------------------

--
-- Table structure for table `blogcategory`
--

CREATE TABLE `blogcategory` (
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogcategory`
--

INSERT INTO `blogcategory` (`category_id`, `category_name`, `created_at`, `updated_at`) VALUES
(4, 'Tech', '2024-08-29 00:39:33', '2024-08-29 00:39:33'),
(7, 'Web', '2024-08-29 07:48:33', '2024-08-29 07:48:33'),
(9, 'Digital', '2024-08-29 23:29:56', '2024-08-29 23:29:56');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `globalsetting`
--

CREATE TABLE `globalsetting` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `headerlogo` varchar(255) DEFAULT NULL,
  `favicon` varchar(255) DEFAULT NULL,
  `footerlogo` varchar(255) DEFAULT NULL,
  `instagramlink` varchar(255) NOT NULL,
  `facebooklink` varchar(255) NOT NULL,
  `linkedinlink` varchar(255) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `address_office` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `globalsetting`
--

INSERT INTO `globalsetting` (`id`, `headerlogo`, `favicon`, `footerlogo`, `instagramlink`, `facebooklink`, `linkedinlink`, `phone`, `address_office`, `email`, `created_at`, `updated_at`) VALUES
(1, 'public/upload/eUTMI7AfGXVmAlS0GBt4mUu8Hd9sCDXCngAaZmg3.jpg', 'public/upload/GDcGi5REjxs56yjkXICqVP5okoQbmT78aTdo6ECo.png', 'public/upload/BfbkUP5lZalZXr5JhZiMkZJrt5275ge3DTiBv6UJ.jpg', 'https://www.instagram.com/sakhujamediagroup/', 'http://127.0.0.1:8000/admin/global2', 'http://127.0.0.1:8000/admin/global3', '8057990080', 'motinager', 'admin@gmail.com', '2024-08-30 01:33:14', '2024-08-30 01:33:19');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_08_26_055904_create_global_table', 2),
(5, '2024_08_26_070240_create_globalsetting_table', 3),
(24, '2024_08_28_113423_create_globalsetting_table', 4),
(26, '2024_08_28_131353_create_blogcategory_table', 5),
(27, '2024_08_28_131413_create_blog_table', 5),
(29, '2024_08_31_050528_create_adminuser_table', 6);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id`, `full_name`, `email`, `password`, `created_at`, `updated_at`) VALUES
(7, 'shivam', 'ss8147774@gmail.com', '$2y$12$BzBySIoWBbAcFhiXQ7mB4eUNzcygDadnHDZWWal7uHwFTJpzavk0m', '2024-07-25 01:23:28', '2024-07-25 01:23:28'),
(8, 'shivam', 'shivamsaini798@gmail.com', '$2y$12$l4PdUzD3BtKpHZ6FL/S0LeC9XBvqBiFUfX1Oeyc2IJPRRHoIHpT5S', '2024-07-25 01:59:49', '2024-07-25 01:59:49'),
(9, 'shivam', 'agent@gmail.com', '$2y$12$AqXc/Ys1UeYpcIGlwu40eOmv.tN.NhGxbfRS3XJjCIsPhrtxHZ8a2', '2024-07-25 02:13:17', '2024-07-25 02:13:17');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('KD5Cn7eVI7bTs4ROhCQXrqVyHrW0NvEudzXiQ3Rm', 13, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il9mbGFzaCI7YToyOntzOjM6Im5ldyI7YTowOnt9czozOiJvbGQiO2E6MDp7fX1zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czozNjoiaHR0cDovLzEyNy4wLjAuMTo4MDAwL2FkbWluL3JlZ2lzdGVyIjt9czo2OiJfdG9rZW4iO3M6NDA6IkQ5UTZwWmJXbDRoeHBXWnBGVldVVWw5ZUpJajNPdUdyUWZxRWgyYlMiO3M6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjEzO30=', 1725108978);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `type` varchar(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `type`, `created_at`, `updated_at`) VALUES
(13, 'Admin', 'admin@gmail.com', NULL, '$2y$12$JioEfH.sg317nzUXfkCereAT4M/ZEs839FnFR/Sd.4E/OKW.x0vPW', NULL, '1', '2024-08-31 01:32:16', '2024-08-31 01:32:16'),
(14, 'shivam', 'shivamsaini798@gmail.com', NULL, '$2y$12$V6k5S2p/kvBFu8asjiDBh.8a8bO0AttPgvbb2l7O51XXjV0cNcdfG', NULL, '2', '2024-08-31 01:55:09', '2024-08-31 01:55:09'),
(15, 'Blog', 'ss8147774@gmail.com', NULL, '$2y$12$AfCRrpt85Dla09nQzEgrGehmv7WvW2DD4cGEzDDooLpnZP5uocyBO', NULL, '3', '2024-08-31 01:55:49', '2024-08-31 01:55:49');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`blog_id`),
  ADD KEY `blog_category_id_foreign` (`category_id`);

--
-- Indexes for table `blogcategory`
--
ALTER TABLE `blogcategory`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `globalsetting`
--
ALTER TABLE `globalsetting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `register_email_unique` (`email`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `blog_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `blogcategory`
--
ALTER TABLE `blogcategory`
  MODIFY `category_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `globalsetting`
--
ALTER TABLE `globalsetting`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `blog`
--
ALTER TABLE `blog`
  ADD CONSTRAINT `blog_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `blogcategory` (`category_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
