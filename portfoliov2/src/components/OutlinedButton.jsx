import { motion } from "framer-motion";
import PropTypes from "prop-types";

export default function OutlinedButton({ link, children }) {
  OutlinedButton.propTypes = {
    link: PropTypes.string.isRequired,
    children: PropTypes.element,
  };

  return (
    <motion.button
      whileHover={{ scale: 1.05 }}
      className="px-6 py-3 border border-white/20 rounded-full font-medium hover:bg-white/10 transition-colors z-10"
    >
      <a href={link} target="_blank" className="flex flex-row items-center">
        {children}
      </a>
    </motion.button>
  );
}
