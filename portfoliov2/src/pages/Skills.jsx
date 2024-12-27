import { motion, useAnimation } from "framer-motion";
import { useEffect } from "react";
import { useInView } from "react-intersection-observer";
import { data } from "../data";

export default function Skills() {
  const controls = useAnimation();
  const [ref, inView] = useInView({
    threshold: 0.1,
  });

  useEffect(() => {
    if (inView) {
      controls.start("visible");
    } else {
      controls.start("hidden");
    }
  }, [controls, inView]);

  return (
    <section
      id="skills"
      className="py-12 mx-auto text-center md:py-24 max-w-[1200px]"
    >
      <h2 className="text-7xl text-gray-100 font-bold mb-20">
        Skills and <span className="text-emerald-300">Technologies</span>
      </h2>
      <div ref={ref} className="flex flex-wrap justify-center gap-8">
        {data.skills.map((item, index) => (
          <motion.div
            key={index}
            custom={index}
            initial="hidden"
            animate={controls}
            variants={{
              hidden: (index) => ({
                opacity: 0,
                y: index % 2 === 0 ? -100 : 100,
              }),
              visible: {
                opacity: 1,
                y: 0,
                transition: { duration: 1.5 },
              },
            }}
            className="bg-white/10, flex flex-col bg-white/30 items-center justify-center w-[150px] h-[150px] rounded-xl p-4 shadow-lg hover:shadow-2xl transition-shadow duration-300"
          >
            <div className={`mb-4`}>
              <img src={item.link} alt={item.name} />
            </div>
            <p className="text-emerald-200 text-xl">{item.name}</p>
          </motion.div>
        ))}
      </div>
    </section>
  );
}
