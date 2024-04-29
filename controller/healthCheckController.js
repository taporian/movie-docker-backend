export const healthCheck = async (req, res) => {
  try {
    res.status(200).json({ status: "OK" });
  } catch (err) {
    res.status(400).json({ msg: err });
  }
};
