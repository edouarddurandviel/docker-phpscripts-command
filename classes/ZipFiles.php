<?php

class ZipFileService {

    private String $outputDir;
    private String $name;
    private String $fileNameExt;
    private String $filePath;

    public function __construct(String $outputDir, String $name, String $fileNameExt, String $filePath) {
        $this->outputDir = $outputDir;
        $this->name = $name;
        $this->filePath = $filePath;
        $this->fileNameExt = $fileNameExt;
    }

    public function create(){


            // create zip file
            $zip = new ZipArchive();
            $zipFile = $this->outputDir . "/" . $this->name . ".zip";

            if ($zip->open($zipFile, ZipArchive::CREATE | ZipArchive::OVERWRITE) === TRUE) {
                $zip->addFile($this->filePath, $this->fileNameExt);
                $zip->close();

                echo "File added to ZIP" . PHP_EOL;
            }

            if (file_exists($this->filePath)) {
                unlink($this->filePath);
            }
    }



}