import PropTypes from "prop-types";

export default function AboutSectionRowTwo({ title, text, children }) {
  AboutSectionRowTwo.propTypes = {
    title: PropTypes.string.isRequired,
    text: PropTypes.string,
    children: PropTypes.element,
  };

  return (
    <div className="border border-white/20 rounded-lg p-6">
      <div className="space-y-4">
        <h3 className="text-2xl font-bold mt-4 mb-2">{title}</h3>
        {text && <p className="text-white/50">{text}</p>}
        {children}
      </div>
    </div>
  );
}
