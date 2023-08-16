#include <pybind11/pybind11.h>

#define STRINGIFY(x) #x
#define MACRO_STRINGIFY(x) STRINGIFY(x)


#include "../src/RecordLoader.h"

#include "../src/QueryProcessor.h"


string loadSingleRecord(const string query, const char* file_path) {
// std::string execute_query(char* input) {
//int main(){
 // char* file_path = "../dataset/twitter_sample_large_record.json";
 // const char* file_path = "../dataset/twitter_sample_large_record.json";
    cout<<"start loading the single large record from "<<file_path<<endl;
    Record* rec = RecordLoader::loadSingleRecord(file_path);
    if (rec == NULL) {
        
        return "record loading fails";
    }
    cout<<"finish loading the single large record"<<endl;

    // string query = "$[*].entities.urls[*].url";
    cout<<"\nstart executing query "<<query<<endl;
    QueryProcessor processor(query);
    string output = processor.runQuery(rec);
    cout<<"finish query execution"<<endl;
 //   cout<<"matches are: "<<output<<endl;
    return output;
}


string loadRecords(const string query, const char* file_path) {

    cout<<"start loading a sequence of small records from "<<file_path<<endl;
    RecordSet* record_set = RecordLoader::loadRecords(file_path);
    if (record_set->size() == 0) {
        
         return "record loading fails";
    }
    cout<<"finish loading a sequence of small records"<<endl;

    // string query = "$.entities.urls[*].url";
    cout<<"\nstart executing query "<<query<<endl;
    QueryProcessor processor(query);
    // process small records one by one
    int num_recs = record_set->size();
    string output = "";
    for (int i = 0; i < num_recs; i++) {
        output.append(processor.runQuery((*record_set)[i]));
    }
    cout<<"finish query execution"<<endl;
 //   cout<<"matches are: "<<output<<endl;
    return output;
}

namespace py = pybind11;


PYBIND11_MODULE(jsonski, m) {
    m.doc() = R"pbdoc(
        Pybind11 example plugin
        -----------------------

        .. currentmodule:: jsonski

        .. autosummary::
           :toctree: _generate

           loadSingleRecord
           loadRecords
    )pbdoc";

    m.def("loadSingleRecord", &loadSingleRecord, R"pbdoc(
       Processing A Single Large Record
    )pbdoc");
        m.def("loadRecords", &loadRecords, R"pbdoc(
        Processing Many Small Records
    )pbdoc");

#ifdef VERSION_INFO
    m.attr("__version__") = MACRO_STRINGIFY(VERSION_INFO);
#else
    m.attr("__version__") = "dev";
#endif
}
