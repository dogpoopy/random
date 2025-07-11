.class public final synthetic Lcom/netease/ntunisdk/piclib/loader/-$$Lambda$laefClBEawoCyWBm_8BfCXpIFwc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# static fields
.field public static final synthetic INSTANCE:Lcom/netease/ntunisdk/piclib/loader/-$$Lambda$laefClBEawoCyWBm_8BfCXpIFwc;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/netease/ntunisdk/piclib/loader/-$$Lambda$laefClBEawoCyWBm_8BfCXpIFwc;

    invoke-direct {v0}, Lcom/netease/ntunisdk/piclib/loader/-$$Lambda$laefClBEawoCyWBm_8BfCXpIFwc;-><init>()V

    sput-object v0, Lcom/netease/ntunisdk/piclib/loader/-$$Lambda$laefClBEawoCyWBm_8BfCXpIFwc;->INSTANCE:Lcom/netease/ntunisdk/piclib/loader/-$$Lambda$laefClBEawoCyWBm_8BfCXpIFwc;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPrepared(Landroid/media/MediaPlayer;)V
    .locals 0

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    return-void
.end method
