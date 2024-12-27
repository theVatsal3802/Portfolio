import { motion } from "framer-motion";
import PropTypes from "prop-types";

export default function ElevatedButton({ link, children }) {
  ElevatedButton.propTypes = {
    link: PropTypes.string.isRequired,
    children: PropTypes.element,
  };

  return (
    <motion.button
      whileHover={{ scale: 1.05 }}
      className="px-6 py-3 bg-emerald-700 rounded-full font-medium hover:bg-emerald-600 transition-colors z-10"
    >
      <a href={link} target="_blank" className="flex flex-row items-center">
        {children}
      </a>
    </motion.button>
  );
}
