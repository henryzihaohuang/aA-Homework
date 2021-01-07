function selectLocation(city, jobs){
    return {
        type:"SWITCH LOCATION",
        city,
        jobs
    }
};

export default selectLocation;
