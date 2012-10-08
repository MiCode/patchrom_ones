.class public Lcom/android/camera/property/GeoTagPreferenceBinder;
.super Lcom/android/camera/property/BooleanPreferenceBinder;
.source "GeoTagPreferenceBinder.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GeoTagPreferenceBinder"


# direct methods
.method public constructor <init>(Lcom/android/camera/ISettingsOwner;Lcom/android/camera/property/Property;Ljava/lang/Object;Z)V
    .locals 6
    .parameter "settingsOwner"
    .parameter
    .parameter "propertyOwnerKey"
    .parameter "defaultPropertyValue"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/ISettingsOwner;",
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/Object;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 19
    .local p2, property:Lcom/android/camera/property/Property;,"Lcom/android/camera/property/Property<Ljava/lang/Boolean;>;"
    const-string v2, "pref_camera_geo_tagging"

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/property/BooleanPreferenceBinder;-><init>(Lcom/android/camera/ISettingsOwner;Ljava/lang/String;Lcom/android/camera/property/Property;Ljava/lang/Object;Z)V

    .line 20
    return-void
.end method


# virtual methods
.method public resetToDefaultValue()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 28
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/property/PreferenceBinder;->settingsOwner:Lcom/android/camera/ISettingsOwner;

    check-cast v2, Landroid/app/Activity;

    const-string v3, "location"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    .line 29
    .local v1, service:Landroid/location/LocationManager;
    invoke-static {}, Lcom/android/camera/DisplayDevice;->EnableGeoTagByDefault()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "gps"

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "network"

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 32
    :cond_0
    iget-object v2, p0, Lcom/android/camera/property/PreferenceBinder;->property:Lcom/android/camera/property/Property;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    .line 39
    .end local v1           #service:Landroid/location/LocationManager;
    :goto_0
    return-void

    .line 34
    .restart local v1       #service:Landroid/location/LocationManager;
    :cond_1
    iget-object v2, p0, Lcom/android/camera/property/PreferenceBinder;->property:Lcom/android/camera/property/Property;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 35
    .end local v1           #service:Landroid/location/LocationManager;
    :catch_0
    move-exception v0

    .line 36
    .local v0, ex:Ljava/lang/Exception;
    const-string v2, "GeoTagPreferenceBinder"

    const-string v3, "resetToDefaultValue() has exception, LocationManager Failed"

    invoke-static {v2, v3, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 37
    iget-object v2, p0, Lcom/android/camera/property/PreferenceBinder;->property:Lcom/android/camera/property/Property;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    goto :goto_0
.end method
