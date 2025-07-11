.class Lcom/netease/androidcrashhandler/zip/ZipCore$4;
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

    .line 450
    iput-object p1, p0, Lcom/netease/androidcrashhandler/zip/ZipCore$4;->this$0:Lcom/netease/androidcrashhandler/zip/ZipCore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkFileName(Ljava/lang/String;)Z
    .locals 1

    const-string v0, ".aci"

    .line 453
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public getFileType(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const-string p1, "ANDROID_JAVA_EXCEPTION"

    return-object p1
.end method
