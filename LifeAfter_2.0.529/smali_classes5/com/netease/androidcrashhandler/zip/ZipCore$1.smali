.class Lcom/netease/androidcrashhandler/zip/ZipCore$1;
.super Ljava/lang/Object;
.source "ZipCore.java"

# interfaces
.implements Lcom/netease/androidcrashhandler/zip/ZipCore$ZipListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/androidcrashhandler/zip/ZipCore;->zipCurDir()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/androidcrashhandler/zip/ZipCore;

.field final synthetic val$result:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/netease/androidcrashhandler/zip/ZipCore;Ljava/util/List;)V
    .locals 0

    .line 221
    iput-object p1, p0, Lcom/netease/androidcrashhandler/zip/ZipCore$1;->this$0:Lcom/netease/androidcrashhandler/zip/ZipCore;

    iput-object p2, p0, Lcom/netease/androidcrashhandler/zip/ZipCore$1;->val$result:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onZipFinish(Ljava/lang/String;)V
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/netease/androidcrashhandler/zip/ZipCore$1;->val$result:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
