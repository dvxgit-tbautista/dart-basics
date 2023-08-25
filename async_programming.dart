void main() async {
// asynchronous programming
//while one  task is processed, processes are already running on another task
//some tasks take more time, with asyn we can wait for them to finish

//async, await, future

  DataService dataService = DataService();
  String data = await dataService.getData();
  print(data);
}

class DataService {
  Future<String> _getDataFromCloud() async {
    // get data from cloud -> takes time
    // await on getting data
    await Future.delayed(
        Duration(seconds: 4)); // function that takes 4 seconds to be finished

    print("get data finished");
    return "fake data"; //returns string
    // return data
  }

  Future<String> _parseDataFromCloud({required String dataFromCloud}) async {
    // parse data from the cloud - it takes time
    await Future.delayed(
        Duration(seconds: 2)); // function that takes 4 seconds to be finished

    print("parse data finished");
    return "fake parsed data";
  }

  Future getData() async {
    // when getData() is called, we call dataFromCloud, awaits until the _getDataFromCloud() is finished
    final String dataFromCloud =
        await _getDataFromCloud(); //we are not getting a future, we are awaiting until the future is finished and gives us a string then the string will be stored in the dataFromCloud

    //after the above is finished, then this is started
    final String parsedData =
        await _parseDataFromCloud(dataFromCloud: dataFromCloud);
    // get data (takes time)
    // parse data = time
    // return data;

    // ! ALTERNATIVE WAY SYNTAX

    // final String parsedData =
    //     await _getDataFromCloud().then((dataFromCloud) async {
    //   return await _parseDataFromCloud(dataFromCloud: dataFromCloud);
    // });

    return parsedData;
  }
}
