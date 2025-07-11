.class Lcom/netease/mrzhna/Launcher$StorageStatus;
.super Ljava/lang/Object;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mrzhna/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StorageStatus"
.end annotation


# instance fields
.field public AvailableSize:J

.field public Path:Ljava/lang/String;

.field public Type:I

.field public UIString:Ljava/lang/String;

.field private m_context:Lcom/netease/mrzhna/Launcher;

.field final synthetic this$0:Lcom/netease/mrzhna/Launcher;


# direct methods
.method public constructor <init>(Lcom/netease/mrzhna/Launcher;Lcom/netease/mrzhna/Launcher;I)V
    .locals 2

    .line 195
    iput-object p1, p0, Lcom/netease/mrzhna/Launcher$StorageStatus;->this$0:Lcom/netease/mrzhna/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    iput-object p2, p0, Lcom/netease/mrzhna/Launcher$StorageStatus;->m_context:Lcom/netease/mrzhna/Launcher;

    .line 197
    iput p3, p0, Lcom/netease/mrzhna/Launcher$StorageStatus;->Type:I

    const-wide/16 v0, 0x0

    .line 198
    iput-wide v0, p0, Lcom/netease/mrzhna/Launcher$StorageStatus;->AvailableSize:J

    if-eqz p3, :cond_2

    const/4 p1, 0x1

    if-eq p3, p1, :cond_1

    const/4 p1, 0x2

    if-eq p3, p1, :cond_0

    const/4 p1, 0x0

    .line 211
    iput-object p1, p0, Lcom/netease/mrzhna/Launcher$StorageStatus;->UIString:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, "neox_launcher_data_sd"

    .line 208
    invoke-static {p2, p1}, Lcom/netease/mrzhna/Launcher;->access$000(Lcom/netease/mrzhna/Launcher;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/netease/mrzhna/Launcher;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/mrzhna/Launcher$StorageStatus;->UIString:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string p1, "neox_launcher_external_sd"

    .line 205
    invoke-static {p2, p1}, Lcom/netease/mrzhna/Launcher;->access$000(Lcom/netease/mrzhna/Launcher;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/netease/mrzhna/Launcher;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/mrzhna/Launcher$StorageStatus;->UIString:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string p1, "neox_launcher_internal_sd"

    .line 202
    invoke-static {p2, p1}, Lcom/netease/mrzhna/Launcher;->access$000(Lcom/netease/mrzhna/Launcher;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/netease/mrzhna/Launcher;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/mrzhna/Launcher$StorageStatus;->UIString:Ljava/lang/String;

    :goto_0
    return-void
.end method
