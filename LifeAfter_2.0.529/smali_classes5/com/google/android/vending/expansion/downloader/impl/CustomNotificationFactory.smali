.class public Lcom/google/android/vending/expansion/downloader/impl/CustomNotificationFactory;
.super Ljava/lang/Object;
.source "CustomNotificationFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createCustomNotification()Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification$ICustomNotification;
    .locals 2

    .line 25
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xd

    if-le v0, v1, :cond_0

    .line 26
    new-instance v0, Lcom/google/android/vending/expansion/downloader/impl/V14CustomNotification;

    invoke-direct {v0}, Lcom/google/android/vending/expansion/downloader/impl/V14CustomNotification;-><init>()V

    return-object v0

    .line 28
    :cond_0
    new-instance v0, Lcom/google/android/vending/expansion/downloader/impl/V3CustomNotification;

    invoke-direct {v0}, Lcom/google/android/vending/expansion/downloader/impl/V3CustomNotification;-><init>()V

    return-object v0
.end method
