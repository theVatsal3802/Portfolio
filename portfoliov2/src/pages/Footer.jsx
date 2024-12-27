import {
  AiFillGithub,
  AiFillInstagram,
  AiOutlineTwitter,
} from "react-icons/ai";
import { FaLinkedin } from "react-icons/fa";
import { FaMedium } from "react-icons/fa6";
import { data } from "../data";

export default function Footer() {
  return (
    <footer id="contact" className="py-8">
      <div className="mx-auto px-4 max-w-[1200px]">
        <div className="flex items-center md:justify-between flex-col md:flex-row justify-center text-center">
          <div className="flex flex-col">
            <h2 className="text-2xl block font-bold mb-10 md:text-7xl text-white/50">
              <span className="text-emerald-400">Get in </span>touch
            </h2>
            <a
              href={`mailto:${data.email}`}
              className="md:text-3xl text-xl font-semibold text-white underline decoration-gray-400 decoration-2 underline-offset-4 hover:decoration-gray-200 transition duration-300"
            >
              {data.email}
            </a>
          </div>
          <div className="text-white/50 mt-12">
            <div className="mb-8">
              <p className="text-lg mb-1">{data.phone}</p>
              <a
                href={`tel:${data.countryCode}${data.mobile}`}
                className="text-2xl font-semibold underline text-gray-400 decoration-2 underline-offset-4 hover:text-gray-50 transition-colors duration-300"
              >
                {data.countryCode} {data.mobile}
              </a>
            </div>
          </div>
        </div>

        <div className="relative mt-12 container flex justify-center items-center gap-10 sm:justify-between max-sm:flex-col">
          <p className="text-gray-200 caption text-n-4 lg:block">
            © {data.year} | {data.name}
          </p>
          <ul className="flex gap-5 flex-wrap">
            <li key={1}>
              <a
                href={data.contact.linkedin.link}
                target="_blank"
                aria-label={data.contact.linkedin.name}
                className="text-gray-200 flex items-center justify-center w-10 h-10 rounded-full hover:opacity-80"
              >
                <FaLinkedin size={30} />
              </a>
            </li>
            <li key={2}>
              <a
                href={data.contact.github.link}
                target="_blank"
                aria-label={data.contact.github.name}
                className="text-gray-200 flex items-center justify-center w-10 h-10 rounded-full hover:opacity-80"
              >
                <AiFillGithub size={30} />
              </a>
            </li>
            <li key={3}>
              <a
                href={data.contact.twitter.link}
                target="_blank"
                aria-label={data.contact.twitter.name}
                className="text-gray-200 flex items-center justify-center w-10 h-10 rounded-full hover:opacity-80"
              >
                <AiOutlineTwitter size={30} />
              </a>
            </li>
            <li key={4}>
              <a
                href={data.contact.instagram.link}
                target="_blank"
                aria-label={data.contact.instagram.name}
                className="text-gray-200 flex items-center justify-center w-10 h-10 rounded-full hover:opacity-80"
              >
                <AiFillInstagram size={30} />
              </a>
            </li>
            <li key={5}>
              <a
                href={data.contact.medium.link}
                target="_blank"
                aria-label={data.contact.medium.name}
                className="text-gray-200 flex items-center justify-center w-10 h-10 rounded-full hover:opacity-80"
              >
                <FaMedium size={30} />
              </a>
            </li>
          </ul>
        </div>
      </div>
    </footer>
  );
}
