Coverage Validator
===========

This is a gem which will read a coverage xml file and either exit with a status of 0 if the coverage meets the target

# How to use?

```
coverageval <coverage file> <coverage threshold>
```

Example:

```
coverageval coverage.xml 0.9
```

# Coverage file format

The only currently supported coverage file is:

```
<?xml version="1.0" ?>
<!DOCTYPE coverage
  SYSTEM 'http://cobertura.sourceforge.net/xml/coverage-03.dtd'>  
<coverage branch-rate="0" line-rate="0.92" timestamp="1421847509594" version="3.7.1">
  <packages>
    <package branch-rate="0" complexity="0" line-rate="0.92" name="">
      <classes>
         <class branch-rate="0" complexity="0" filename="propertyfrontend/__init__.py" line-rate="0.8387" name="propertyfrontend/__init__">
           <methods/>
           <lines>
             <line hits="1" number="1"/>
             <line hits="0" number="2"/>
             ...
           </lines>
        </class>
      </classes>
    </package>
  </packages>
</coverage>
```
