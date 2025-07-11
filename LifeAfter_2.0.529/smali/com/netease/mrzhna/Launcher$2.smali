.class Lcom/netease/mrzhna/Launcher$2;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mrzhna/Launcher;->launch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/mrzhna/Launcher;


# direct methods
.method constructor <init>(Lcom/netease/mrzhna/Launcher;)V
    .locals 0

    .line 912
    iput-object p1, p0, Lcom/netease/mrzhna/Launcher$2;->this$0:Lcom/netease/mrzhna/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    const-string p1, ".dmp"

    .line 916
    invoke-virtual {p2, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
