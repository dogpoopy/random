.class Lcom/netease/mrzhna/Launcher$PatchFile;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mrzhna/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PatchFile"
.end annotation


# instance fields
.field private m_patch_status:I

.field final synthetic this$0:Lcom/netease/mrzhna/Launcher;


# direct methods
.method constructor <init>(Lcom/netease/mrzhna/Launcher;)V
    .locals 0

    .line 1332
    iput-object p1, p0, Lcom/netease/mrzhna/Launcher$PatchFile;->this$0:Lcom/netease/mrzhna/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1700(Lcom/netease/mrzhna/Launcher$PatchFile;)I
    .locals 0

    .line 1332
    iget p0, p0, Lcom/netease/mrzhna/Launcher$PatchFile;->m_patch_status:I

    return p0
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1338
    iget-object v0, p0, Lcom/netease/mrzhna/Launcher$PatchFile;->this$0:Lcom/netease/mrzhna/Launcher;

    invoke-static {v0}, Lcom/netease/mrzhna/Launcher;->access$1000(Lcom/netease/mrzhna/Launcher;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/neox/NativeInterface;->NativeStartPatch(Ljava/lang/String;)V

    .line 1339
    invoke-static {}, Lcom/netease/neox/NativeInterface;->NativePatchGetPatchStatus()I

    move-result v0

    iput v0, p0, Lcom/netease/mrzhna/Launcher$PatchFile;->m_patch_status:I

    .line 1340
    iget-object v0, p0, Lcom/netease/mrzhna/Launcher$PatchFile;->this$0:Lcom/netease/mrzhna/Launcher;

    invoke-static {v0}, Lcom/netease/mrzhna/Launcher;->access$100(Lcom/netease/mrzhna/Launcher;)Lcom/netease/mrzhna/Launcher;

    move-result-object v0

    new-instance v1, Lcom/netease/mrzhna/Launcher$PatchFile$1;

    invoke-direct {v1, p0}, Lcom/netease/mrzhna/Launcher$PatchFile$1;-><init>(Lcom/netease/mrzhna/Launcher$PatchFile;)V

    invoke-virtual {v0, v1}, Lcom/netease/mrzhna/Launcher;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
