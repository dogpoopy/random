.class Lcom/netease/mrzhna/Launcher$AssetInfo;
.super Ljava/lang/Object;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mrzhna/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AssetInfo"
.end annotation


# instance fields
.field public MD5:Ljava/lang/String;

.field public Path:Ljava/lang/String;

.field public Size:J

.field final synthetic this$0:Lcom/netease/mrzhna/Launcher;


# direct methods
.method public constructor <init>(Lcom/netease/mrzhna/Launcher;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 165
    iput-object p1, p0, Lcom/netease/mrzhna/Launcher$AssetInfo;->this$0:Lcom/netease/mrzhna/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    iput-object p2, p0, Lcom/netease/mrzhna/Launcher$AssetInfo;->Path:Ljava/lang/String;

    .line 167
    iput-object p3, p0, Lcom/netease/mrzhna/Launcher$AssetInfo;->MD5:Ljava/lang/String;

    .line 168
    iput-wide p4, p0, Lcom/netease/mrzhna/Launcher$AssetInfo;->Size:J

    return-void
.end method
