.class Lcom/soundcloud/android/crop/CropUtil$BackgroundJob;
.super Lcom/soundcloud/android/crop/MonitoredActivity$LifeCycleAdapter;
.source "CropUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/soundcloud/android/crop/CropUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BackgroundJob"
.end annotation


# instance fields
.field private final mActivity:Lcom/soundcloud/android/crop/MonitoredActivity;

.field private final mCleanupRunner:Ljava/lang/Runnable;

.field private final mDialog:Landroid/app/ProgressDialog;

.field private final mHandler:Landroid/os/Handler;

.field private final mJob:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/soundcloud/android/crop/MonitoredActivity;Ljava/lang/Runnable;Landroid/app/ProgressDialog;Landroid/os/Handler;)V
    .locals 1

    .line 138
    invoke-direct {p0}, Lcom/soundcloud/android/crop/MonitoredActivity$LifeCycleAdapter;-><init>()V

    .line 130
    new-instance v0, Lcom/soundcloud/android/crop/CropUtil$BackgroundJob$1;

    invoke-direct {v0, p0}, Lcom/soundcloud/android/crop/CropUtil$BackgroundJob$1;-><init>(Lcom/soundcloud/android/crop/CropUtil$BackgroundJob;)V

    iput-object v0, p0, Lcom/soundcloud/android/crop/CropUtil$BackgroundJob;->mCleanupRunner:Ljava/lang/Runnable;

    .line 139
    iput-object p1, p0, Lcom/soundcloud/android/crop/CropUtil$BackgroundJob;->mActivity:Lcom/soundcloud/android/crop/MonitoredActivity;

    .line 140
    iput-object p3, p0, Lcom/soundcloud/android/crop/CropUtil$BackgroundJob;->mDialog:Landroid/app/ProgressDialog;

    .line 141
    iput-object p2, p0, Lcom/soundcloud/android/crop/CropUtil$BackgroundJob;->mJob:Ljava/lang/Runnable;

    .line 142
    invoke-virtual {p1, p0}, Lcom/soundcloud/android/crop/MonitoredActivity;->addLifeCycleListener(Lcom/soundcloud/android/crop/MonitoredActivity$LifeCycleListener;)V

    .line 143
    iput-object p4, p0, Lcom/soundcloud/android/crop/CropUtil$BackgroundJob;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/soundcloud/android/crop/CropUtil$BackgroundJob;)Lcom/soundcloud/android/crop/MonitoredActivity;
    .locals 0

    .line 124
    iget-object p0, p0, Lcom/soundcloud/android/crop/CropUtil$BackgroundJob;->mActivity:Lcom/soundcloud/android/crop/MonitoredActivity;

    return-object p0
.end method

.method static synthetic access$100(Lcom/soundcloud/android/crop/CropUtil$BackgroundJob;)Landroid/app/ProgressDialog;
    .locals 0

    .line 124
    iget-object p0, p0, Lcom/soundcloud/android/crop/CropUtil$BackgroundJob;->mDialog:Landroid/app/ProgressDialog;

    return-object p0
.end method


# virtual methods
.method public onActivityDestroyed(Lcom/soundcloud/android/crop/MonitoredActivity;)V
    .locals 1

    .line 158
    iget-object p1, p0, Lcom/soundcloud/android/crop/CropUtil$BackgroundJob;->mCleanupRunner:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 159
    iget-object p1, p0, Lcom/soundcloud/android/crop/CropUtil$BackgroundJob;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/soundcloud/android/crop/CropUtil$BackgroundJob;->mCleanupRunner:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onActivityStarted(Lcom/soundcloud/android/crop/MonitoredActivity;)V
    .locals 0

    .line 169
    iget-object p1, p0, Lcom/soundcloud/android/crop/CropUtil$BackgroundJob;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method

.method public onActivityStopped(Lcom/soundcloud/android/crop/MonitoredActivity;)V
    .locals 0

    .line 164
    iget-object p1, p0, Lcom/soundcloud/android/crop/CropUtil$BackgroundJob;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->hide()V

    return-void
.end method

.method public run()V
    .locals 3

    .line 148
    :try_start_0
    iget-object v0, p0, Lcom/soundcloud/android/crop/CropUtil$BackgroundJob;->mJob:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    iget-object v0, p0, Lcom/soundcloud/android/crop/CropUtil$BackgroundJob;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/soundcloud/android/crop/CropUtil$BackgroundJob;->mCleanupRunner:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/soundcloud/android/crop/CropUtil$BackgroundJob;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/soundcloud/android/crop/CropUtil$BackgroundJob;->mCleanupRunner:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    throw v0
.end method
