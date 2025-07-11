.class Lcom/netease/androidcrashhandler/zip/ZipCore$6;
.super Ljava/lang/Object;
.source "ZipCore.java"

# interfaces
.implements Lcom/netease/androidcrashhandler/zip/ZipCore$FileNameChecker;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/androidcrashhandler/zip/ZipCore;->filterDifferentTypes(Ljava/util/ArrayList;)Ljava/util/HashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/androidcrashhandler/zip/ZipCore;


# direct methods
.method constructor <init>(Lcom/netease/androidcrashhandler/zip/ZipCore;)V
    .locals 0

    .line 477
    iput-object p1, p0, Lcom/netease/androidcrashhandler/zip/ZipCore$6;->this$0:Lcom/netease/androidcrashhandler/zip/ZipCore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkFileName(Ljava/lang/String;)Z
    .locals 1

    const-string v0, ".anr"

    .line 480
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ".message"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ".trace"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public getFileType(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const-string p1, "ANDROID_ANR"

    return-object p1
.end method
