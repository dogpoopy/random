.class public final synthetic Lcom/google/firebase/encoders/proto/-$$Lambda$ProtobufEncoder$Builder$JOeBREy-arX3AusrR1rEc3P7Mnw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/firebase/encoders/ObjectEncoder;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/firebase/encoders/proto/-$$Lambda$ProtobufEncoder$Builder$JOeBREy-arX3AusrR1rEc3P7Mnw;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/encoders/proto/-$$Lambda$ProtobufEncoder$Builder$JOeBREy-arX3AusrR1rEc3P7Mnw;

    invoke-direct {v0}, Lcom/google/firebase/encoders/proto/-$$Lambda$ProtobufEncoder$Builder$JOeBREy-arX3AusrR1rEc3P7Mnw;-><init>()V

    sput-object v0, Lcom/google/firebase/encoders/proto/-$$Lambda$ProtobufEncoder$Builder$JOeBREy-arX3AusrR1rEc3P7Mnw;->INSTANCE:Lcom/google/firebase/encoders/proto/-$$Lambda$ProtobufEncoder$Builder$JOeBREy-arX3AusrR1rEc3P7Mnw;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final encode(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/google/firebase/encoders/ObjectEncoderContext;

    invoke-static {p1, p2}, Lcom/google/firebase/encoders/proto/ProtobufEncoder$Builder;->lambda$static$0(Ljava/lang/Object;Lcom/google/firebase/encoders/ObjectEncoderContext;)V

    return-void
.end method
