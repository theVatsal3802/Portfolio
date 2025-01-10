import { motion } from "framer-motion";
import { AiFillGithub } from "react-icons/ai";
import { HiOutlineExternalLink } from "react-icons/hi";
import ElevatedButton from "../components/ElevatedButton";
import OutlinedButton from "../components/OutlinedButton";
import { data } from "../data";

export default function Projects() {
  return (
    <div className="text-white py-12 md:py-24 px-8" id="projects">
      <h2 className="text-4xl md:text-7xl font-bold mb-16 text-emerald-300 mx-auto text-center">
        Projects
      </h2>
      <div className="grid grid-cols-1 md:grid-cols-3 mx-auto space-8">
        {data.projects.map((project, index) => (
          <motion.div
            key={index}
            initial={{ opacity: 0, y: 20 }}
            whileInView={{ opacity: 1, y: 0 }}
            viewport={{ once: true }}
            transition={{ duration: 0.5, delay: index * 0.1 }}
            className="rounded-lg overflow-hidden shadow-lg hover:shadow-2xl transition-shadow duration-300 m-4"
          >
            {/* <div
              className="p-6 flex justify-between items-center cursor-pointer bg-black/20 border border-white/10"
              onClick={() => toggleIndex(index)}
            >
              <h3 className="text-2xl md:text-4xl font-semibold">{`${
                index + 1
              }. ${project.title}`}</h3>
              <div className="flex items-center space-x-4">
                <FiChevronDown
                  className={`w-6 h-6 transform transition-transform ${
                    expandedIndex === index ? "rotate-180" : ""
                  }`}
                />
              </div>
            </div>
            <AnimatePresence>
              {expandedIndex === index && (
                <motion.div
                  initial={{ height: 0, opacity: 0 }}
                  animate={{ height: "auto", opacity: 1 }}
                  exit={{ height: 0, opacity: 0 }}
                  transition={{ duration: 0.3 }}
                  className="px-6 pb-6 bg-black/20 border border-white/10"
                >
                  <div className="flex flex-col gap-8 p-4 md:p-12">
                    <div className="flex flex-col justify-between">
                      <div className="flex flex-col md:flex-row justify-between">
                        <div>
                          <p className="text-white mb-4">{project.desc}</p>
                          <p className="text-emerald-300 md:font-medium mb-2">
                            Tech-stack: {project.stack}
                          </p>
                        </div>
                        <p className="text-white/90 font-medium mb-4  capitalize">
                          Type: {project.type}
                        </p>
                      </div>
                      <div className="flex flex-col md:flex-row gap-4 justify-between items-center space-x-4 mt-4">
                        <OutlinedButton link={project.git}>
                          <span className="mr-2">
                            <AiFillGithub size={30} />
                          </span>
                          {" View Source code"}
                        </OutlinedButton>
                        {project.link && (
                          <ElevatedButton link={project.link}>
                            <span className="mr-2">
                              <HiOutlineExternalLink size={30} />
                            </span>
                            {" View Project"}
                          </ElevatedButton>
                        )}
                      </div>
                    </div>
                  </div>
                </motion.div>
              )}
            </AnimatePresence> */}
            <div className="h-full flex flex-col items-center text-center border border-white/20 hover:bg-white/5 rounded-3xl p-4">
              <h3 className="text-2xl md:text-3xl text-center font-bold mb-2 text-emerald-300">
                {project.title}
              </h3>
              <div className="mt-4">
                <p className="text-xl text-white mb-4">{project.desc}</p>
                <p className="text-xl text-emerald-300 md:font-medium mb-2">
                  Tech-stack: {project.stack}
                </p>
              </div>
              <p className="text-xl text-white/90 font-bold mb-4  capitalize">
                Type: {project.type}
              </p>
              <OutlinedButton link={project.git}>
                <span className="mr-2">
                  <AiFillGithub size={30} />
                </span>
                {" View Source code"}
              </OutlinedButton>
              {project.link && (
                <>
                  <div className="mt-4"></div>
                  <ElevatedButton link={project.link}>
                    <span className="mr-2">
                      <HiOutlineExternalLink size={30} />
                    </span>
                    {" View Project"}
                  </ElevatedButton>
                </>
              )}
            </div>
          </motion.div>
        ))}
      </div>
    </div>
  );
}
