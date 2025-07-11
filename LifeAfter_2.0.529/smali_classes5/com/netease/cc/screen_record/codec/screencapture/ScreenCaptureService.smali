.class public Lcom/netease/cc/screen_record/codec/screencapture/ScreenCaptureService;
.super Landroid/app/Service;
.source "ScreenCaptureService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/cc/screen_record/codec/screencapture/ScreenCaptureService$ServiceCallback;,
        Lcom/netease/cc/screen_record/codec/screencapture/ScreenCaptureService$NotificationBuilder;,
        Lcom/netease/cc/screen_record/codec/screencapture/ScreenCaptureService$LocalBinder;
    }
.end annotation


# static fields
.field private static ncBuilder:Lcom/netease/cc/screen_record/codec/screencapture/ScreenCaptureService$NotificationBuilder;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final binder:Landroid/os/IBinder;

.field private callback:Lcom/netease/cc/screen_record/codec/screencapture/ScreenCaptureService$ServiceCallback;

.field private mediaProjection:Landroid/media/projection/MediaProjection;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 20
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const-string v0, "ScreenCaptureService"

    .line 22
    iput-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenCaptureService;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenCaptureService;->mediaProjection:Landroid/media/projection/MediaProjection;

    .line 28
    new-instance v1, Lcom/netease/cc/screen_record/codec/screencapture/ScreenCaptureService$LocalBinder;

    invoke-direct {v1, p0}, Lcom/netease/cc/screen_record/codec/screencapture/ScreenCaptureService$LocalBinder;-><init>(Lcom/netease/cc/screen_record/codec/screencapture/ScreenCaptureService;)V

    iput-object v1, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenCaptureService;->binder:Landroid/os/IBinder;

    .line 30
    iput-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenCaptureService;->callback:Lcom/netease/cc/screen_record/codec/screencapture/ScreenCaptureService$ServiceCallback;

    return-void
.end method

.method public static SetNotificationBuilder(Lcom/netease/cc/screen_record/codec/screencapture/ScreenCaptureService$NotificationBuilder;)V
    .locals 0

    .line 136
    sput-object p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenCaptureService;->ncBuilder:Lcom/netease/cc/screen_record/codec/screencapture/ScreenCaptureService$NotificationBuilder;

    return-void
.end method

.method private createNotificationChannel()V
    .locals 3

    .line 94
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-virtual {p0}, Lcom/netease/cc/screen_record/codec/screencapture/ScreenCaptureService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 97
    sget-object v1, Lcom/netease/cc/screen_record/codec/screencapture/ScreenCaptureService;->ncBuilder:Lcom/netease/cc/screen_record/codec/screencapture/ScreenCaptureService$NotificationBuilder;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 98
    invoke-interface {v1, p0, v0}, Lcom/netease/cc/screen_record/codec/screencapture/ScreenCaptureService$NotificationBuilder;->Build(Landroid/content/Context;Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    if-nez v1, :cond_1

    .line 101
    invoke-static {p0, v0, v2}, Lcom/netease/cc/screen_record/codec/screencapture/ScreenCaptureService;->getDftNotification(Landroid/content/Context;Landroid/app/Notification$Builder;Ljava/lang/Class;)Landroid/app/Notification;

    move-result-object v1

    :cond_1
    const/16 v0, 0x9c

    .line 103
    invoke-virtual {p0, v0, v1}, Lcom/netease/cc/screen_record/codec/screencapture/ScreenCaptureService;->startForeground(ILandroid/app/Notification;)V

    return-void
.end method

.method public static getDftNotification(Landroid/content/Context;Landroid/app/Notification$Builder;Ljava/lang/Class;)Landroid/app/Notification;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/app/Notification$Builder;",
            "Ljava/lang/Class<",
            "*>;)",
            "Landroid/app/Notification;"
        }
    .end annotation

    .line 119
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v0, "notification_id"

    const/16 v1, 0x1a

    if-lt p2, v1, :cond_0

    .line 120
    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 123
    :cond_0
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p2, v1, :cond_1

    const-string p2, "notification"

    .line 124
    invoke-virtual {p0, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    .line 125
    new-instance p2, Landroid/app/NotificationChannel;

    const/4 v1, 0x2

    const-string v2, "notification_name"

    invoke-direct {p2, v0, v2, v1}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 126
    invoke-virtual {p0, p2}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 129
    :cond_1
    invoke-virtual {p1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    const/4 p1, 0x1

    .line 130
    iput p1, p0, Landroid/app/Notification;->defaults:I

    return-object p0
.end method


# virtual methods
.method public getMediaProjection()Landroid/media/projection/MediaProjection;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenCaptureService;->mediaProjection:Landroid/media/projection/MediaProjection;

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const-string p1, "ScreenCaptureService"

    const-string v0, "onBind"

    .line 44
    invoke-static {p1, v0}, Lcom/netease/cc/screen_record/codec/log/CCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    iget-object p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenCaptureService;->binder:Landroid/os/IBinder;

    return-object p1
.end method

.method public onCreate()V
    .locals 2

    const-string v0, "ScreenCaptureService"

    const-string v1, "onCreate()\uff1aCalled by the system when the service is first created"

    .line 72
    invoke-static {v0, v1}, Lcom/netease/cc/screen_record/codec/log/CCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "ScreenCaptureService"

    const-string v1, "MyService onDestroy()\uff1aCalled by the system to notify a Service that it is no longer used and is being removed. "

    .line 84
    invoke-static {v0, v1}, Lcom/netease/cc/screen_record/codec/log/CCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStartCommand----> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenCaptureService;->callback:Lcom/netease/cc/screen_record/codec/screencapture/ScreenCaptureService$ServiceCallback;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScreenCaptureService"

    invoke-static {v1, v0}, Lcom/netease/cc/screen_record/codec/log/CCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-direct {p0}, Lcom/netease/cc/screen_record/codec/screencapture/ScreenCaptureService;->createNotificationChannel()V

    if-eqz p1, :cond_0

    const/4 v0, -0x1

    const-string v1, "code"

    .line 56
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "data"

    .line 57
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    const-string v2, "media_projection"

    .line 58
    invoke-virtual {p0, v2}, Lcom/netease/cc/screen_record/codec/screencapture/ScreenCaptureService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/projection/MediaProjectionManager;

    .line 59
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v1, Landroid/content/Intent;

    invoke-virtual {v2, v0, v1}, Landroid/media/projection/MediaProjectionManager;->getMediaProjection(ILandroid/content/Intent;)Landroid/media/projection/MediaProjection;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenCaptureService;->mediaProjection:Landroid/media/projection/MediaProjection;

    .line 62
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    .line 64
    iget-object p2, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenCaptureService;->callback:Lcom/netease/cc/screen_record/codec/screencapture/ScreenCaptureService$ServiceCallback;

    if-eqz p2, :cond_1

    .line 65
    invoke-interface {p2}, Lcom/netease/cc/screen_record/codec/screencapture/ScreenCaptureService$ServiceCallback;->onStartCommand()V

    :cond_1
    return p1
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 2

    const-string v0, "ScreenCaptureService"

    const-string v1, "MyService onUnbind()\uff1aCalled when all clients have disconnected from a particular interface published by the service."

    .line 78
    invoke-static {v0, v1}, Lcom/netease/cc/screen_record/codec/log/CCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method

.method public setCallback(Lcom/netease/cc/screen_record/codec/screencapture/ScreenCaptureService$ServiceCallback;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenCaptureService;->callback:Lcom/netease/cc/screen_record/codec/screencapture/ScreenCaptureService$ServiceCallback;

    return-void
.end method
