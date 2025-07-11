.class Lcom/netease/mrzhna/Launcher$16;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mrzhna/Launcher;->finishSelf()V
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

    .line 1857
    iput-object p1, p0, Lcom/netease/mrzhna/Launcher$16;->this$0:Lcom/netease/mrzhna/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p1, "[azx]"

    const-string p2, "Launcher.finishSelf confirm"

    .line 1860
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1861
    iget-object p1, p0, Lcom/netease/mrzhna/Launcher$16;->this$0:Lcom/netease/mrzhna/Launcher;

    invoke-virtual {p1}, Lcom/netease/mrzhna/Launcher;->finish()V

    return-void
.end method
