    package model;

    public class Student {

            private int id;
            private String name;
            private int cla;
            private int phoneno;
            private String parentName;
            private int parentNumber;
            private int marks;

            public int getId() {
                return id;
            }

            public void setId(int id) {
                this.id = id;
            }

            public void setName(String name) {
                this.name = name;
            }

            public String getName() {
                return name;
            }

            public void setCla(int cla) {
                this.cla = cla;
            }


            public int getCla() {
                return cla;
            }

            public void setPhoneno(int phoneno) {
                this.phoneno = phoneno;
            }

            public int getPhoneno() {
                return phoneno;
            }

            public String getParentName() {
                return parentName;
            }

            public void setParentName(String parentName) {
                parentName = parentName;
            }

        public void setParentNumber(int parentNumber) {
            this.parentNumber = parentNumber;
        }

        public int getParentNumber() {
            return parentNumber;
        }

        public void setMarks(int marks) {
            this.marks = marks;
        }

        public int getMarks() {
                return marks;
        }
    }

