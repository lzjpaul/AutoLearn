#!/usr/bin/env bash
optspec=":-:"
while getopts "$optspec" optchar; do
    # echo "OPTARG : ${OPTARG}"
    case "${OPTARG}" in
        input)
            valinput="${!OPTIND}"; OPTIND=$(( $OPTIND + 1 ))
            # echo "Parsing option: '--${OPTARG}', value: '${valinput}'" >&2;
            ;;
        output)
            valoutput="${!OPTIND}"; OPTIND=$(( $OPTIND + 1 ))
            # echo "Parsing option: '--${OPTARG}', value: '${valoutput}'" >&2;
            ;;
        vis)
            valvis="${!OPTIND}"; OPTIND=$(( $OPTIND + 1 ))
            # echo "Parsing option: '--${OPTARG}', value: '${valvis}'" >&2;
            ;;
        sampleid)
            valsampleid="${!OPTIND}"; OPTIND=$(( $OPTIND + 1 ))
            # echo "Parsing option: '--${OPTARG}', value: '${valsampleid}'" >&2;
            ;;
    esac
done

# echo "valueinput: ${valinput}";
# echo "valueoutput: ${valoutput}";
# echo "valuevis: ${valvis}";
# echo "valuesampleid: ${valsampleid}";

echo "python main_sonar_dependent_regression.py -inputfolder ${valinput} -outputfolder ${valoutput}"
python main_sonar_dependent_regression.py -inputfolder ${valinput} -outputfolder ${valoutput}
