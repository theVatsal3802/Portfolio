import PropTypes from "prop-types";

export default function AboutSectionRowOne({
  title,
  text,
  src,
  alt,
  children,
}) {
  AboutSectionRowOne.propTypes = {
    title: PropTypes.string.isRequired,
    text: PropTypes.string.isRequired,
    src: PropTypes.string,
    alt: PropTypes.string,
    children: PropTypes.element,
  };

  return (
    <div className="border border-white/20 rounded-lg p-6">
      <h3 className="text-2xl font-bold mb-2">{title}</h3>
      <p className="text-white/50 mb-4">{text}</p>
      {src && (
        <div className="mt-4 relative h-[250px] overflow-hidden">
          <img
            src={src}
            alt={alt}
            className="absolute inset-0 w-full h-full object-contain"
          />
        </div>
      )}
      {children}
    </div>
  );
}
