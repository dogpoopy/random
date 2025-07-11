.class Lcom/netease/ntunisdk/piclib/camera/CameraActivity$VideoRecordEventListener;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Landroidx/core/util/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/piclib/camera/CameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "VideoRecordEventListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/core/util/Consumer<",
        "Landroidx/camera/video/VideoRecordEvent;",
        ">;"
    }
.end annotation


# instance fields
.field private final cameraActivityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/netease/ntunisdk/piclib/camera/CameraActivity;",
            ">;"
        }
    .end annotation
.end field

.field private final file:Ljava/io/File;


# direct methods
.method public constructor <init>(Lcom/netease/ntunisdk/piclib/camera/CameraActivity;Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "activity",
            "file"
        }
    .end annotation

    .line 876
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 877
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity$VideoRecordEventListener;->cameraActivityRef:Ljava/lang/ref/WeakReference;

    .line 878
    iput-object p2, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity$VideoRecordEventListener;->file:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public accept(Landroidx/camera/video/VideoRecordEvent;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "videoRecordEvent"
        }
    .end annotation

    .line 884
    :try_start_0
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity$VideoRecordEventListener;->cameraActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;

    if-nez v0, :cond_0

    return-void

    .line 889
    :cond_0
    invoke-static {v0}, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->access$1100(Lcom/netease/ntunisdk/piclib/camera/CameraActivity;)I

    move-result v1

    if-lez v1, :cond_3

    instance-of v1, p1, Landroidx/camera/video/VideoRecordEvent$Status;

    if-eqz v1, :cond_3

    .line 890
    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity$VideoRecordEventListener;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    .line 891
    invoke-static {v0}, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->access$1100(Lcom/netease/ntunisdk/piclib/camera/CameraActivity;)I

    move-result v3

    int-to-long v3, v3

    cmp-long v5, v1, v3

    if-ltz v5, :cond_1

    .line 892
    invoke-static {v0}, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->access$1200(Lcom/netease/ntunisdk/piclib/camera/CameraActivity;)Landroidx/camera/video/Recording;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/camera/video/Recording;->stop()V

    goto :goto_0

    .line 893
    :cond_1
    invoke-static {v0}, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->access$1300(Lcom/netease/ntunisdk/piclib/camera/CameraActivity;)J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-ltz v5, :cond_3

    .line 894
    invoke-static {v0}, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->access$1300(Lcom/netease/ntunisdk/piclib/camera/CameraActivity;)J

    move-result-wide v3

    sub-long v3, v1, v3

    add-long/2addr v3, v1

    .line 896
    invoke-static {v0}, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->access$1100(Lcom/netease/ntunisdk/piclib/camera/CameraActivity;)I

    move-result v5

    int-to-long v5, v5

    cmp-long v7, v3, v5

    if-ltz v7, :cond_2

    .line 897
    invoke-static {}, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->access$400()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "accept -> predictedTotalSize: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 898
    invoke-static {v0}, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->access$1200(Lcom/netease/ntunisdk/piclib/camera/CameraActivity;)Landroidx/camera/video/Recording;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/camera/video/Recording;->stop()V

    .line 900
    :cond_2
    invoke-static {v0, v1, v2}, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->access$1302(Lcom/netease/ntunisdk/piclib/camera/CameraActivity;J)J

    .line 904
    :cond_3
    :goto_0
    instance-of v1, p1, Landroidx/camera/video/VideoRecordEvent$Start;

    if-eqz v1, :cond_4

    .line 905
    invoke-static {v0}, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->access$1400(Lcom/netease/ntunisdk/piclib/camera/CameraActivity;)V

    .line 907
    :cond_4
    instance-of v1, p1, Landroidx/camera/video/VideoRecordEvent$Finalize;

    if-eqz v1, :cond_5

    .line 908
    check-cast p1, Landroidx/camera/video/VideoRecordEvent$Finalize;

    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity$VideoRecordEventListener;->file:Ljava/io/File;

    invoke-static {v0, p1, v1}, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->access$1500(Lcom/netease/ntunisdk/piclib/camera/CameraActivity;Landroidx/camera/video/VideoRecordEvent$Finalize;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 911
    invoke-static {}, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->access$400()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "accept -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "videoRecordEvent"
        }
    .end annotation

    .line 871
    check-cast p1, Landroidx/camera/video/VideoRecordEvent;

    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/piclib/camera/CameraActivity$VideoRecordEventListener;->accept(Landroidx/camera/video/VideoRecordEvent;)V

    return-void
.end method
