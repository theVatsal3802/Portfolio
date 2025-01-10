import PropTypes from "prop-types";
import { HiOutlineExternalLink } from "react-icons/hi";
import ElevatedButton from "./ElevatedButton";

export default function ExperienceBox({
  title,
  duration,
  desc,
  certificate,
  position,
}) {
  ExperienceBox.propTypes = {
    title: PropTypes.string.isRequired,
    position: PropTypes.string.isRequired,
    duration: PropTypes.string.isRequired,
    desc: PropTypes.array.isRequired,
    certificate: PropTypes.string,
  };
  return (
    <div className="border border-white/20 rounded-lg p-6">
      <div className="flex flex-col md:flex-row justify-center md:justify-between p-4">
        <div className="flex flex-col my-2 items-center md:items-start">
          <h3 className="text-2xl font-bold mb-2 text-emerald-300">{title}</h3>
          <h4 className="text-xl font-bold mb-2">{position}</h4>
        </div>
        <div className="flex flex-col my-2 items-center md:items-end">
          <h3 className="text-lg font-bold my-2 text-white/50">{duration}</h3>
          {certificate && (
            <ElevatedButton link={certificate} className="min-w-fit">
              <span className="mr-2">
                <HiOutlineExternalLink size={20} />
              </span>
              {" View certificate"}
            </ElevatedButton>
          )}
        </div>
      </div>
      <ul className="list-disc px-8 mt-2 text-lg">
        {desc.map((point, index) => (
          <div key={index} className="flex flex-row justify-start pt-2">
            <li>{` ${point}`}</li>
          </div>
        ))}
      </ul>
    </div>
  );
}
