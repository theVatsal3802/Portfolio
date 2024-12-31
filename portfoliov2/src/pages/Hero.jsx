import { motion } from "framer-motion";
import ElevatedButton from "../components/ElevatedButton";
import OutlinedButton from "../components/OutlinedButton";
import { data } from "../data";
export default function Hero() {
  return (
    <div className="relative overflow-clip min-h-fit min-w-full text-white bg-[linear-gradient(to_bottom,#000,#071E18_35%,#208A65_67%,#35FB8E_85%)]">
      <div
        className="absolute bg-black w-[2400px] h-[1000px] rounded-[50%] left-1/2 -translate-x-1/2 
                      bg-[radial-gradient(closest-side,#000_85%,#249974)] top-[450px]"
      />
      <div className="container relative mx-auto px-4 py-12 z-10">
        <div className="flex flex-col items-center justify-center text-center z-10">
          <motion.div
            initial={{ opacity: 0, scale: 0.5 }}
            animate={{ opacity: 1, scale: 1 }}
            transition={{ duration: 0.8 }}
            className="relative mb-4 mt-24"
          >
            <div className="absolute inset-0 bg-gradient-to-b from-emerald-200/50 to-transparent rounded-full blur-3xl z-10"></div>
            <img
              src={data.profilePic}
              alt={data.name}
              className="w-[250px] relative z-10"
            />
          </motion.div>
          <motion.div
            initial={{ opacity: 0, y: 20 }}
            animate={{ opacity: 1, y: 0 }}
            transition={{ duration: 0.8 }}
            className="max-w-2xl z-10"
          >
            <h1 className="text-4xl md:text-7xl font-bold tracking-tighter mb-4 z-10">
              Hi, I am <br /> {data.name.split(" ")[0]}
              <span className="text-emerald-400">{` ${
                data.name.split(" ")[1]
              }`}</span>
            </h1>
            <p className="text-xl text-white/80 max-w-lg mx-auto leading-relaxed mb-6 z-10">
              {data.tagLine}
            </p>
            <div className="flex gap-4 justify-center z-10">
              {/* <motion.button
                whileHover={{ scale: 1.05 }}
                className="px-6 py-3 bg-emerald-500 rounded-full font-medium hover:bg-emerald-600 transition-colors z-10"
              >
                <a href={data.buttons.heroContactMeButton.path}>
                  {data.buttons.heroContactMeButton.title}
                </a>
              </motion.button> */}
              <ElevatedButton
                link={data.buttons.heroContactMeButton.path}
                isNotBlank={true}
              >
                {data.buttons.heroContactMeButton.title}
              </ElevatedButton>
              {/* <motion.button
                whileHover={{ scale: 1.05 }}
                className="px-6 py-3 border border-white/20 rounded-full font-medium hover:bg-white/10 transition-colors z-10"
              >
                <a href={data.buttons.heroViewProjectsButton.path}>
                  {data.buttons.heroViewProjectsButton.title}
                </a>
              </motion.button> */}
              <OutlinedButton
                link={data.buttons.heroViewProjectsButton.path}
                isNotBlank={true}
              >
                {data.buttons.heroViewProjectsButton.title}
              </OutlinedButton>
            </div>
          </motion.div>

          {/* <motion.div
            animate={{
              y: [0, 15, 0],
            }}
            transition={{
              duration: 3,
              repeat: Infinity,
              ease: "easeInOut",
            }}
            className="absolute bottom-16 right-1/3 w-96 h-96 bg-emerald-500/10 rounded-full blur-xl"
          ></motion.div> */}
        </div>
      </div>
    </div>
  );
}
