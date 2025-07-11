.class Lcom/netease/mrzhna/Launcher$23;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mrzhna/Launcher;->showGuideToSettingsDialog()V
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

    .line 2550
    iput-object p1, p0, Lcom/netease/mrzhna/Launcher$23;->this$0:Lcom/netease/mrzhna/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 2553
    iget-object p1, p0, Lcom/netease/mrzhna/Launcher$23;->this$0:Lcom/netease/mrzhna/Launcher;

    invoke-static {p1}, Lcom/netease/mrzhna/Launcher;->access$1800(Landroid/app/Activity;)V

    .line 2554
    iget-object p1, p0, Lcom/netease/mrzhna/Launcher$23;->this$0:Lcom/netease/mrzhna/Launcher;

    invoke-virtual {p1}, Lcom/netease/mrzhna/Launcher;->finish()V

    return-void
.end method
