import PropTypes from "prop-types";

export default function OutlinedButton({ link, children, isNotBlank }) {
  OutlinedButton.propTypes = {
    link: PropTypes.string.isRequired,
    children: PropTypes.element,
    isNotBlank: PropTypes.bool,
  };

  return (
    <a
      href={link}
      target={isNotBlank ? "" : "_blank"}
      className="px-6 py-3 border border-white/20 rounded-full font-medium hover:bg-white/10 hover:scale-110 transition-all z-10 flex flex-row items-center"
    >
      {children}
    </a>
  );
}
