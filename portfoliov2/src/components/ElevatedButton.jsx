import PropTypes from "prop-types";

export default function ElevatedButton({ link, children, isNotBlank }) {
  ElevatedButton.propTypes = {
    link: PropTypes.string.isRequired,
    children: PropTypes.element,
    isNotBlank: PropTypes.bool,
  };

  return (
    <a
      href={link}
      target={isNotBlank ? "" : "_blank"}
      className="px-6 py-3 bg-emerald-700 rounded-full font-medium hover:bg-emerald-600 hover:scale-110 transition-all z-10 flex flex-row items-center"
    >
      {children}
    </a>
  );
}
