import { useState } from "react";
import { AiOutlineClose, AiOutlineMenu } from "react-icons/ai";
import { data } from "../data";

export default function Navbar() {
  const [nav, setNav] = useState(false);
  const [selectedIndex, setSelectedIndex] = useState(0);

  function toggleNav() {
    setNav(!nav);
  }

  function closeNav(index) {
    handleClick(index);
    setNav(false);
  }

  function handleClick(index) {
    setSelectedIndex(index);
  }

  return (
    <div className="z-50 fixed flex justify-center w-full font-bold">
      <div className="border border-white/20 mt-8 backdrop-blur-3xl rounded-3xl hidden md:flex items-center justify-center p-2 max-w-full mx-auto">
        <ul className="flex flex-row py-2 px-4 space-x-8">
          {data.navLinks.map((link, index) => (
            <li
              key={index}
              className={`${link.isRedirectLink ? "flex-row" : ""}`}
            >
              <a
                href={link.path}
                target={link.isRedirectLink ? "_blank" : null}
                className={`transform hover:skew-x-12 transition-all duration-300 ease-in-out ${
                  selectedIndex === index
                    ? "underline underline-offset-2 font-extrabold"
                    : ""
                }  ${
                  link.isRedirectLink
                    ? "text-emerald-300 hover:text-emerald-600"
                    : "text-white hover:text-white/50"
                }`}
                onClick={() => handleClick(index)}
              >
                {link.title}
              </a>
            </li>
          ))}
        </ul>
      </div>

      <div
        onClick={toggleNav}
        className="md:hidden absolute top-5 right-14 border rounded z-50 text-white/70 border-white/70 p-2"
      >
        {nav ? <AiOutlineClose size={30} /> : <AiOutlineMenu size={30} />}
      </div>

      <div
        className={`fixed left-0 top-0 w-full h-full bg-black/90 transform transition-transform duration-300 ${
          nav ? "translate-x-0" : "translate-x-full"
        }`}
      >
        <ul className="flex flex-col items-center justify-center space-y-8 h-full">
          {data.navLinks.map((link, index) => (
            <li key={index}>
              <a
                href={link.path}
                className={`text-3xl ${
                  link.isRedirectLink
                    ? "text-emerald-300 hover:text-emerald-600"
                    : "hover:text-white/50"
                }`}
                onClick={() => closeNav(index)}
              >
                {link.title}
              </a>
            </li>
          ))}
        </ul>
      </div>
    </div>
  );
}
