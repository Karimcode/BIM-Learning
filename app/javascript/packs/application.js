import "bootstrap";
import "slick-carousel";
import "slick-carousel/slick/slick.css";
import "slick-carousel/slick/slick-theme.css";

import flatpickr from "flatpickr";
import { initFlatpickr } from "../plugins/flatpickr";
import { initChannel, scrollLastMessageIntoView } from "../plugins/action_cable";
import { initUpdateNavbarOnScroll } from '../components/navbar';
import { submitChatForm } from '../components/submitChatForm';
import { initFormRefresh } from '../components/sort_by';
import { carouselIndex } from '../components/carousel-participations-index.js';
import { initStars } from '../components/rating-stars';
import { initHowBox } from '../components/how-diagram-home';
import { initCountdown } from '../components/lesson-countdown';
import {initGallery} from '../components/photogallery'
import { initShowReview } from '../components/show-reviews';



initFlatpickr();
initUpdateNavbarOnScroll();
initChannel();
scrollLastMessageIntoView();
submitChatForm();
initFormRefresh()
carouselIndex();
initStars();
initHowBox();
initCountdown();
initGallery();
initShowReview();
