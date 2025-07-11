.class Lcom/netease/mrzhna/FoldingModeContentObserver;
.super Landroid/database/ContentObserver;
.source "Client.java"


# static fields
.field public static final SYSTEM_FOLDING_MODE_CLOSE:I = 0x0

.field public static final SYSTEM_FOLDING_MODE_KEYS:Ljava/lang/String; = "oplus_system_folding_mode"

.field public static final SYSTEM_FOLDING_MODE_OPEN:I = 0x1


# instance fields
.field private mContext:Landroid/content/Context;

.field public state:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1

    .line 194
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const/4 p2, -0x1

    .line 189
    iput p2, p0, Lcom/netease/mrzhna/FoldingModeContentObserver;->state:I

    .line 195
    iput-object p1, p0, Lcom/netease/mrzhna/FoldingModeContentObserver;->mContext:Landroid/content/Context;

    .line 196
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "oplus_system_folding_mode"

    invoke-static {p1, v0, p2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/netease/mrzhna/FoldingModeContentObserver;->state:I

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    .line 201
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 202
    iget-object p1, p0, Lcom/netease/mrzhna/FoldingModeContentObserver;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "oplus_system_folding_mode"

    const/4 v1, -0x1

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/netease/mrzhna/FoldingModeContentObserver;->state:I

    return-void
.end method
