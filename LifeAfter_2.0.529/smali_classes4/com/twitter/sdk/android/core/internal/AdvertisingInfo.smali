.class Lcom/twitter/sdk/android/core/internal/AdvertisingInfo;
.super Ljava/lang/Object;
.source "AdvertisingInfo.java"


# instance fields
.field final advertisingId:Ljava/lang/String;

.field final limitAdTrackingEnabled:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/twitter/sdk/android/core/internal/AdvertisingInfo;->advertisingId:Ljava/lang/String;

    .line 26
    iput-boolean p2, p0, Lcom/twitter/sdk/android/core/internal/AdvertisingInfo;->limitAdTrackingEnabled:Z

    return-void
.end method
