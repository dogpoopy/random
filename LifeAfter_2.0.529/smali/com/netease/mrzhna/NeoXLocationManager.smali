.class public Lcom/netease/mrzhna/NeoXLocationManager;
.super Ljava/lang/Object;
.source "NeoXLocationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mrzhna/NeoXLocationManager$NeoXLocationListener;
    }
.end annotation


# instance fields
.field gps_enabled:Z

.field private final locationListenerGps:Lcom/netease/mrzhna/NeoXLocationManager$NeoXLocationListener;

.field private final locationListenerNetwork:Lcom/netease/mrzhna/NeoXLocationManager$NeoXLocationListener;

.field locationManager:Landroid/location/LocationManager;

.field network_enabled:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/netease/mrzhna/NeoXLocationManager;->locationManager:Landroid/location/LocationManager;

    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/netease/mrzhna/NeoXLocationManager;->gps_enabled:Z

    .line 21
    iput-boolean v0, p0, Lcom/netease/mrzhna/NeoXLocationManager;->network_enabled:Z

    .line 34
    new-instance v0, Lcom/netease/mrzhna/NeoXLocationManager$NeoXLocationListener;

    invoke-direct {v0, p0}, Lcom/netease/mrzhna/NeoXLocationManager$NeoXLocationListener;-><init>(Lcom/netease/mrzhna/NeoXLocationManager;)V

    iput-object v0, p0, Lcom/netease/mrzhna/NeoXLocationManager;->locationListenerGps:Lcom/netease/mrzhna/NeoXLocationManager$NeoXLocationListener;

    .line 35
    new-instance v0, Lcom/netease/mrzhna/NeoXLocationManager$NeoXLocationListener;

    invoke-direct {v0, p0}, Lcom/netease/mrzhna/NeoXLocationManager$NeoXLocationListener;-><init>(Lcom/netease/mrzhna/NeoXLocationManager;)V

    iput-object v0, p0, Lcom/netease/mrzhna/NeoXLocationManager;->locationListenerNetwork:Lcom/netease/mrzhna/NeoXLocationManager$NeoXLocationListener;

    return-void
.end method

.method static synthetic access$000(Lcom/netease/mrzhna/NeoXLocationManager;Landroid/location/Location;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/netease/mrzhna/NeoXLocationManager;->locationChanged(Landroid/location/Location;)V

    return-void
.end method

.method private locationChanged(Landroid/location/Location;)V
    .locals 8

    if-nez p1, :cond_0

    return-void

    .line 85
    :cond_0
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    .line 86
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    .line 87
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    long-to-double v4, v4

    const-wide v6, 0x408f400000000000L    # 1000.0

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v4, v6

    invoke-static/range {v0 .. v5}, Lcom/netease/neox/NativeInterface;->NativeOnLocationUpdated(DDD)V

    return-void
.end method


# virtual methods
.method public openLocationSetting(Landroid/content/Context;)V
    .locals 2

    .line 79
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public startUpdatingLocation(Landroid/content/Context;)Z
    .locals 9

    .line 39
    iget-object v0, p0, Lcom/netease/mrzhna/NeoXLocationManager;->locationManager:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    const-string v0, "location"

    .line 40
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/LocationManager;

    iput-object p1, p0, Lcom/netease/mrzhna/NeoXLocationManager;->locationManager:Landroid/location/LocationManager;

    .line 43
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/netease/mrzhna/NeoXLocationManager;->locationManager:Landroid/location/LocationManager;

    const-string v0, "gps"

    invoke-virtual {p1, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/netease/mrzhna/NeoXLocationManager;->gps_enabled:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    :catch_0
    :try_start_1
    iget-object p1, p0, Lcom/netease/mrzhna/NeoXLocationManager;->locationManager:Landroid/location/LocationManager;

    const-string v0, "network"

    invoke-virtual {p1, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/netease/mrzhna/NeoXLocationManager;->network_enabled:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    nop

    .line 47
    :goto_0
    iget-boolean p1, p0, Lcom/netease/mrzhna/NeoXLocationManager;->gps_enabled:Z

    const/4 v0, 0x0

    if-nez p1, :cond_1

    iget-boolean v1, p0, Lcom/netease/mrzhna/NeoXLocationManager;->network_enabled:Z

    if-nez v1, :cond_1

    return v0

    :cond_1
    if-eqz p1, :cond_2

    .line 51
    :try_start_2
    iget-object v2, p0, Lcom/netease/mrzhna/NeoXLocationManager;->locationManager:Landroid/location/LocationManager;

    const-string v3, "gps"

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/netease/mrzhna/NeoXLocationManager;->locationListenerGps:Lcom/netease/mrzhna/NeoXLocationManager$NeoXLocationListener;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v8

    invoke-virtual/range {v2 .. v8}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    .line 52
    :cond_2
    iget-boolean p1, p0, Lcom/netease/mrzhna/NeoXLocationManager;->network_enabled:Z

    if-eqz p1, :cond_3

    .line 53
    iget-object v1, p0, Lcom/netease/mrzhna/NeoXLocationManager;->locationManager:Landroid/location/LocationManager;

    const-string v2, "network"

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/netease/mrzhna/NeoXLocationManager;->locationListenerNetwork:Lcom/netease/mrzhna/NeoXLocationManager$NeoXLocationListener;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-virtual/range {v1 .. v7}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_3
    const/4 p1, 0x1

    return p1

    :catch_2
    return v0
.end method

.method public stopUpdatingLocation(Landroid/content/Context;)V
    .locals 1

    .line 62
    iget-object p1, p0, Lcom/netease/mrzhna/NeoXLocationManager;->locationManager:Landroid/location/LocationManager;

    if-nez p1, :cond_0

    return-void

    .line 66
    :cond_0
    iget-boolean v0, p0, Lcom/netease/mrzhna/NeoXLocationManager;->gps_enabled:Z

    if-eqz v0, :cond_1

    .line 67
    iget-object v0, p0, Lcom/netease/mrzhna/NeoXLocationManager;->locationListenerGps:Lcom/netease/mrzhna/NeoXLocationManager$NeoXLocationListener;

    invoke-virtual {p1, v0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 70
    :cond_1
    iget-boolean p1, p0, Lcom/netease/mrzhna/NeoXLocationManager;->network_enabled:Z

    if-eqz p1, :cond_2

    .line 71
    iget-object p1, p0, Lcom/netease/mrzhna/NeoXLocationManager;->locationManager:Landroid/location/LocationManager;

    iget-object v0, p0, Lcom/netease/mrzhna/NeoXLocationManager;->locationListenerNetwork:Lcom/netease/mrzhna/NeoXLocationManager$NeoXLocationListener;

    invoke-virtual {p1, v0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    :cond_2
    return-void
.end method
