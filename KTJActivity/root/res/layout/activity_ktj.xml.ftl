<?xml version="1.0" encoding="utf-8"?>
<layout xmlns:android="http://schemas.android.com/apk/res/android"
    xmlns:app="http://schemas.android.com/apk/res-auto">

    <data>

        <#if generateViewModel>
            <variable
                name="vm"
                type="${packageName}.${pageName?lower_case}.vm.${viewModelClass}" />
        </#if>

    </data>

    <LinearLayout
        android:layout_width="match_parent"
        android:layout_height="match_parent"
		android:orientation="vertical"
        android:background="@color/windowBackground">

    </LinearLayout>

</layout>